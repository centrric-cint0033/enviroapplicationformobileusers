import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/view/loginpage/service/constants.dart';
import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:injectable/injectable.dart';
import 'package:retry/retry.dart';

enum HttpMethod { get, post, put, patch, delete }

@LazySingleton()
class HttpService {
  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;

  HttpService._internal();

  Future<Either<Map<MainFailure, dynamic>, Response>> request({
    dynamic data,
    required String apiUrl,
    bool authenticated = true,
    HttpMethod method = HttpMethod.get,
  }) async {
    Client client;
    if (authenticated) {
      client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);
    } else {
      client = Client();
    }
    try {
      customPrint(content: data, name: "data");

      final url = "$baseUrl$apiUrl";
      customPrint(content: url, name: "url");
      final headers = {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      };
      final Response response;
      switch (method) {
        case HttpMethod.get:
          response = await retryMethod(client.get(Uri.parse(url)));
          break;
        case HttpMethod.post:
          response = await retryMethod(
            client.post(Uri.parse(url), body: data, headers: headers),
          );
          break;
        case HttpMethod.put:
          response = response = await retryMethod(
            client.put(Uri.parse(url), body: data),
          );
          break;
        case HttpMethod.patch:
          response = await retryMethod(
            client.patch(Uri.parse(url), body: data),
          );
          break;
        case HttpMethod.delete:
          response = response = await retryMethod(
            client.delete(Uri.parse(url), body: data),
          );
          break;
        default:
          response = await retryMethod(
            client.get(Uri.parse(url)),
          );
          break;
      }

      customPrint(content: data, name: "Payload");
      customPrint(content: response.body, name: "Response");

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        customPrint(content: response.body, name: "Response");
        return Right(response);
      } else {
        return Left({const MainFailure.clientFailure(): response});
      }
    } on FormatException catch (_) {
      return Left({const MainFailure.clientFailure(): null});
    } on HttpException catch (_) {
      return Left({const MainFailure.clientFailure(): null});
    } on TimeoutException catch (_) {
      return Left({const MainFailure.timeout(): null});
    } on SocketException catch (_) {
      return Left({const MainFailure.networkFailure(): null});
    } catch (e) {
      debugPrint(e.toString());
      return Left({const MainFailure.clientFailure(): null});
    } finally {
      client.close();
    }
  }

  Future<Response> retryMethod(Future<Response> apiCall) {
    return retry(
      () => apiCall,
      maxAttempts: 3,
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );
  }

  Future<Either<Map<MainFailure, dynamic>, Response>> multipartRequest({
    required MultipartRequest request,
  }) async {
    final token = await SecureStorage().readData(key: "token");
    request.headers.addAll({
      'Accept': 'application/json',
      'Content-Type': 'multipart/form-data',
    });
    if (token != null) {
      request.headers.addAll({'Authorization': 'Bearer $token'});
    }

    StreamedResponse streamedResponse = await request.send();
    final response = await Response.fromStream(streamedResponse);
    customPrint(content: response.body, name: "StreamedResponse");
    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      return Right(response);
    } else {
      return Left({const MainFailure.clientFailure(): response});
    }
  }
}

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print(data.toString());
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print(data.toString());
    return data;
  }
}

Future<String?> generateNewToken() async {
  final refresh = await SecureStorage().readData(key: "refresh");
  if (refresh != null) {
    final res = await HttpService().request(
      apiUrl: 'url',
      authenticated: false,
      method: HttpMethod.post,
      data: jsonEncode({"refresh_token": refresh}),
    );
    res.fold(
      (l) async {
        await getIt<SecureStorage>().removeData(key: 'token');
      },
      (r) async {
        final token = jsonDecode(r.body)["token"];
        await getIt<SecureStorage>().writeData(key: 'token', value: token);
        return token;
      },
    );
    return null;
  }
  return null;
}
