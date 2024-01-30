// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_page_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginViewModel on LoginViewModelBase, Store {
  late final _$loginResponseAtom =
      Atom(name: 'LoginViewModelBase.loginResponse', context: context);

  @override
  ApiResponse<dynamic> get loginResponse {
    _$loginResponseAtom.reportRead();
    return super.loginResponse;
  }

  @override
  set loginResponse(ApiResponse<dynamic> value) {
    _$loginResponseAtom.reportWrite(value, super.loginResponse, () {
      super.loginResponse = value;
    });
  }

  @override
  String toString() {
    return '''
loginResponse: ${loginResponse}
    ''';
  }
}
