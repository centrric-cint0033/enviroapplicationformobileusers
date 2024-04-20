// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileViewModel on ProfileViewModelBase, Store {
  late final _$profilepageResponseAtom =
      Atom(name: 'ProfileViewModelBase.profilepageResponse', context: context);

  @override
  ApiResponse<ProfileRespModel> get profilepageResponse {
    _$profilepageResponseAtom.reportRead();
    return super.profilepageResponse;
  }

  @override
  set profilepageResponse(ApiResponse<ProfileRespModel> value) {
    _$profilepageResponseAtom.reportWrite(value, super.profilepageResponse, () {
      super.profilepageResponse = value;
    });
  }

  late final _$profileeditResponseAtom =
      Atom(name: 'ProfileViewModelBase.profileeditResponse', context: context);

  @override
  ApiResponse<ProfileRespModel> get profileeditResponse {
    _$profileeditResponseAtom.reportRead();
    return super.profileeditResponse;
  }

  @override
  set profileeditResponse(ApiResponse<ProfileRespModel> value) {
    _$profileeditResponseAtom.reportWrite(value, super.profileeditResponse, () {
      super.profileeditResponse = value;
    });
  }

  late final _$profileviewmodelfunctionAsyncAction = AsyncAction(
      'ProfileViewModelBase.profileviewmodelfunction',
      context: context);

  @override
  Future<void> profileviewmodelfunction() {
    return _$profileviewmodelfunctionAsyncAction
        .run(() => super.profileviewmodelfunction());
  }

  late final _$profileeditviewmodelAsyncAction = AsyncAction(
      'ProfileViewModelBase.profileeditviewmodel',
      context: context);

  @override
  Future<void> profileeditviewmodel(String username, String password) {
    return _$profileeditviewmodelAsyncAction
        .run(() => super.profileeditviewmodel(username, password));
  }

  @override
  String toString() {
    return '''
profilepageResponse: ${profilepageResponse},
profileeditResponse: ${profileeditResponse}
    ''';
  }
}
