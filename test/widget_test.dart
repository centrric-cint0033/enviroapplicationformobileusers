// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/service/02_sales/sales_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:enviro_mobile_application/main.dart';
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

class MockTestClass extends Mock implements TestClass {}

void main() {
  late SalesService salesService;
  late MockHttpService mockHttpService;

  late MockTestClass mockTestClass;

  setUp(() {
    mockHttpService = MockHttpService();
    salesService = SalesService(mockHttpService);
    mockTestClass = MockTestClass();
  });

  test('test a class', () async {
    when(mockTestClass.displayName()).thenAnswer((realInvocation) async => '');
  });

  //act
  final result = expect(mockTestClass.displayName(), '');

  // group('saleslistServiceApi', () {
  //   test('should return list of sales models on success', () async {
  //     // Arrange
  //     final responseBody = {'app_data': [/* sample sales data */]};
  //     when(mockHttpService.request(
  //             authenticated: true,
  //             method: HttpMethod.get,
  //             apiUrl: ApiEndPoints.endpointsaleslist))
  //         .thenAnswer((_) async => Right(List<SalesModel>));

  //     // Act
  //     final result = await salesService.saleslistServiceApi();

  //     // Assert
  //     expect(result, Right([])); // Add your expected result here
  //     verify(mockHttpService.request(
  //         authenticated: true,
  //         method: HttpMethod.get,
  //         apiUrl: ApiEndPoints.endpointsaleslist));
  //   });

  //   // Add more test cases for different scenarios (error cases, edge cases, etc.)
  // });

  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
