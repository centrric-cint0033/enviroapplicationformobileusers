// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intranet_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntranetViewModel on IntranetViewModelBase, Store {
  late final _$intranetpageResponseAtom = Atom(
      name: 'IntranetViewModelBase.intranetpageResponse', context: context);

  @override
  ApiResponse<intranetfldrRespModel> get intranetpageResponse {
    _$intranetpageResponseAtom.reportRead();
    return super.intranetpageResponse;
  }

  @override
  set intranetpageResponse(ApiResponse<intranetfldrRespModel> value) {
    _$intranetpageResponseAtom.reportWrite(value, super.intranetpageResponse,
        () {
      super.intranetpageResponse = value;
    });
  }

  late final _$intranetfolderinsideResponseAtom = Atom(
      name: 'IntranetViewModelBase.intranetfolderinsideResponse',
      context: context);

  @override
  ApiResponse<intranetfldrRespModel> get intranetfolderinsideResponse {
    _$intranetfolderinsideResponseAtom.reportRead();
    return super.intranetfolderinsideResponse;
  }

  @override
  set intranetfolderinsideResponse(ApiResponse<intranetfldrRespModel> value) {
    _$intranetfolderinsideResponseAtom
        .reportWrite(value, super.intranetfolderinsideResponse, () {
      super.intranetfolderinsideResponse = value;
    });
  }

  late final _$intranetviewmodelfunctionAsyncAction = AsyncAction(
      'IntranetViewModelBase.intranetviewmodelfunction',
      context: context);

  @override
  Future<void> intranetviewmodelfunction(int id) {
    return _$intranetviewmodelfunctionAsyncAction
        .run(() => super.intranetviewmodelfunction(id));
  }

  late final _$intranetfolderinsidefunctionAsyncAction = AsyncAction(
      'IntranetViewModelBase.intranetfolderinsidefunction',
      context: context);

  @override
  Future<void> intranetfolderinsidefunction(int id) {
    return _$intranetfolderinsidefunctionAsyncAction
        .run(() => super.intranetfolderinsidefunction(id));
  }

  @override
  String toString() {
    return '''
intranetpageResponse: ${intranetpageResponse},
intranetfolderinsideResponse: ${intranetfolderinsideResponse}
    ''';
  }
}
