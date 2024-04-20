// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:http/http.dart';
import 'package:mockito/mockito.dart';

class TestClass {
  Future<String> displayName() async {
    return 'jithin';
  }
}

// Mock class for HttpService
class MockHttpService extends Mock implements HttpService {}

// Mock class for Response
class ResponseMock extends Mock implements Response {}

void main() {
  late SalesService salesService;
  late MockHttpService mockHttpService;

  setUp(() {
    mockHttpService = MockHttpService();
    salesService = SalesService(mockHttpService);
  });

  test('test a class', () async {
    //arrange
    when(mockHttpService.request(apiUrl: ApiEndPoints.endpointsaleslist))
        .thenAnswer((realInvocation) async => Right(Response('', 200)));
    // //act
    // final result = await salesService.saleJoblistApiService();
    // // assert
    // expect(result, Null);
  });

  test('test a error class', () async {
    //arrange
    when(mockHttpService.request(apiUrl: ApiEndPoints.endpointsaleslist))
        .thenAnswer((realInvocation) async =>
            Left({const MainFailure.clientFailure(): 'message'}));
    //act
    // final result = await salesService.saleJoblistApiService();

    // print(result.isLeft());
    // // assert
    // expect(result, isA<Left>);
  });
}
