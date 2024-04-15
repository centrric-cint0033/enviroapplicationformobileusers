import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/Routepage/token_expire.dart';
import 'package:enviro_mobile_application/constant/base_url.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:dartz/dartz.dart';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http_interceptor/http/intercepted_client.dart';
import 'package:http_interceptor/http/interceptor_contract.dart';
import 'package:http_interceptor/models/request_data.dart';
import 'package:http_interceptor/models/response_data.dart';
import 'package:injectable/injectable.dart';
import 'package:jwt_decode/jwt_decode.dart';
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

    return tryCatch(client, () async {
      final url = "$baseUrl$apiUrl";
      customPrint(content: url, name: "url");
      final Response response;
      response = await httpSwitchMethod(method, client, url, data);
      if (data != null) customPrint(content: data, name: "Payload");
      customPrint(content: response.statusCode, name: "Status Code");
      customPrint(content: response.body, name: "Response");

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        // for app login || opt || sign up
        await tokenStore(response);
        return Right(response);
      } else {
        return Left({
          const MainFailure.clientFailure():
              jsonDecode(response.body)["detail"] ??
                  jsonDecode(response.body)["app_data"]
        });
      }
    });
  }

  Future<Either<Map<MainFailure, dynamic>, Response>> multipartRequest({
    MultipartRequest? mRequest,
    String? apiUrl,
    String? method,
    Map<String, String>? data,
  }) async {
    final url = "$baseUrl$apiUrl";

    // if (method != null) {
    MultipartRequest request = MultipartRequest(method!, Uri.parse(url));
    customPrint(content: url, name: "multiPart url");
    // }

    return tryCatch(null, () async {
      final token = await SecureStorage().readData(key: "token");
      request.headers.addAll({
        'Accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      });
      if (token != null) {
        request.headers.addAll({'Authorization': 'Bearer $token'});
      }

      if (data != null) {
        data.forEach((key, value) {
          request.fields[key] = value.toString();
        });
      }

      StreamedResponse streamedResponse = await request.send();
      final response = await Response.fromStream(streamedResponse);
      customPrint(content: response.body, name: "StreamedResponse");
      customPrint(content: response.statusCode, name: "multiPart statusCode");

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        return Right(response);
      } else {
        return Left({
          const MainFailure.clientFailure():
              jsonDecode(response.body)["detail"] ??
                  jsonDecode(response.body)["app_data"]
        });
      }
    });
  }
}

Future<Either<Map<MainFailure, dynamic>, Response>> tryCatch(
    Client? client,
    Future<Either<Map<MainFailure, dynamic>, Response>> Function()
        function) async {
  try {
    return function();
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
    client?.close();
  }
}

Future<void> tokenStore(Response response) async {
  if (jsonDecode(response.body) is! List &&
      jsonDecode(response.body)["access"] != null) {
    await SecureStorage().writeData(
      key: "token",
      value: jsonDecode(response.body)["access"],
    );

    if (jsonDecode(response.body)["refresh"] != null) {
      await SecureStorage().writeData(
        key: "refresh",
        value: jsonDecode(response.body)["refresh"],
      );
    }
  }
}

Future<Response> httpSwitchMethod(
    HttpMethod method, Client client, String url, Object? data) async {
  switch (method) {
    case HttpMethod.get:
      return await retryMethod(client.get(Uri.parse(url)));
    case HttpMethod.post:
      return await retryMethod(client.post(Uri.parse(url), body: data));
    case HttpMethod.put:
      return await retryMethod(client.put(Uri.parse(url), body: data));
    case HttpMethod.patch:
      return await retryMethod(client.patch(Uri.parse(url), body: data));
    case HttpMethod.delete:
      return await retryMethod(client.delete(Uri.parse(url), body: data));
    default:
      return await retryMethod(client.get(Uri.parse(url)));
  }
}

Future<Response> retryMethod(Future<Response> apiCall) async {
  return retry(() => apiCall,
      maxAttempts: 3,
      retryIf: (e) => e is SocketException || e is TimeoutException);
}

class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    final token = await SecureStorage().readData(key: "token");
    data.headers.addAll({
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    if (data.statusCode == 401) await generateNewToken();
    return data;
  }
}

Future<void> generateNewToken() async {
  final access = await SecureStorage().readData(key: "token");
  bool authenticated = (access != null && access.isNotEmpty)
      ? jwtTokenChecker(Jwt.parseJwt(access))
      : false;

  if (!authenticated) {
    final refresh = await SecureStorage().readData(key: "refresh");
    if (refresh != null) {
      final res = await HttpService().multipartRequest(
        apiUrl: '/api/token/refresh/',
        method: 'POST',
        data: {"refresh": refresh},
      );
      res.fold(
        (l) async {
          await getIt<SecureStorage>().removeData(key: 'token');
        },
        (r) async {
          final token = jsonDecode(r.body)["access"];
          await getIt<SecureStorage>().writeData(key: 'token', value: token);
        },
      );
    }
  }
}
