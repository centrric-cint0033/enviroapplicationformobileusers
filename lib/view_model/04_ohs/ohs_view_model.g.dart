// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohs_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OHSViewModel on OHSViewModelBase, Store {
  late final _$newspageResponseAtom =
      Atom(name: 'OHSViewModelBase.newspageResponse', context: context);

  @override
  ApiResponse<List<OhsRespModel>> get newspageResponse {
    _$newspageResponseAtom.reportRead();
    return super.newspageResponse;
  }

  @override
  set newspageResponse(ApiResponse<List<OhsRespModel>> value) {
    _$newspageResponseAtom.reportWrite(value, super.newspageResponse, () {
      super.newspageResponse = value;
    });
  }

  late final _$FoldercreationResponseAtom =
      Atom(name: 'OHSViewModelBase.FoldercreationResponse', context: context);

  @override
  ApiResponse<String> get FoldercreationResponse {
    _$FoldercreationResponseAtom.reportRead();
    return super.FoldercreationResponse;
  }

  @override
  set FoldercreationResponse(ApiResponse<String> value) {
    _$FoldercreationResponseAtom
        .reportWrite(value, super.FoldercreationResponse, () {
      super.FoldercreationResponse = value;
    });
  }

  late final _$newspagefolderinsideResponseAtom = Atom(
      name: 'OHSViewModelBase.newspagefolderinsideResponse', context: context);

  @override
  ApiResponse<OhsNewsfldrRespModel> get newspagefolderinsideResponse {
    _$newspagefolderinsideResponseAtom.reportRead();
    return super.newspagefolderinsideResponse;
  }

  @override
  set newspagefolderinsideResponse(ApiResponse<OhsNewsfldrRespModel> value) {
    _$newspagefolderinsideResponseAtom
        .reportWrite(value, super.newspagefolderinsideResponse, () {
      super.newspagefolderinsideResponse = value;
    });
  }

  late final _$newspagefolderResponseAtom =
      Atom(name: 'OHSViewModelBase.newspagefolderResponse', context: context);

  @override
  ApiResponse<OhsNewsfldrRespModel> get newspagefolderResponse {
    _$newspagefolderResponseAtom.reportRead();
    return super.newspagefolderResponse;
  }

  @override
  set newspagefolderResponse(ApiResponse<OhsNewsfldrRespModel> value) {
    _$newspagefolderResponseAtom
        .reportWrite(value, super.newspagefolderResponse, () {
      super.newspagefolderResponse = value;
    });
  }

  late final _$notificationpageResponseAtom =
      Atom(name: 'OHSViewModelBase.notificationpageResponse', context: context);

  @override
  ApiResponse<List<OhsRespModel>> get notificationpageResponse {
    _$notificationpageResponseAtom.reportRead();
    return super.notificationpageResponse;
  }

  @override
  set notificationpageResponse(ApiResponse<List<OhsRespModel>> value) {
    _$notificationpageResponseAtom
        .reportWrite(value, super.notificationpageResponse, () {
      super.notificationpageResponse = value;
    });
  }

  late final _$ohsnewsviewmodelfunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsnewsviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnewsviewmodelfunction() {
    return _$ohsnewsviewmodelfunctionAsyncAction
        .run(() => super.ohsnewsviewmodelfunction());
  }

  late final _$ohsfoldercreationviewmodelfunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsfoldercreationviewmodelfunction',
      context: context);

  @override
  Future<void> ohsfoldercreationviewmodelfunction(String folderName, int id) {
    return _$ohsfoldercreationviewmodelfunctionAsyncAction
        .run(() => super.ohsfoldercreationviewmodelfunction(folderName, id));
  }

  late final _$newspagefolderinsidefunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.newspagefolderinsidefunction',
      context: context);

  @override
  Future<void> newspagefolderinsidefunction(int id) {
    return _$newspagefolderinsidefunctionAsyncAction
        .run(() => super.newspagefolderinsidefunction(id));
  }

  late final _$ohsnewsfolderviewmodelfunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsnewsfolderviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnewsfolderviewmodelfunction(int id) {
    return _$ohsnewsfolderviewmodelfunctionAsyncAction
        .run(() => super.ohsnewsfolderviewmodelfunction(id));
  }

  late final _$ohsnotificationviewmodelfunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsnotificationviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnotificationviewmodelfunction() {
    return _$ohsnotificationviewmodelfunctionAsyncAction
        .run(() => super.ohsnotificationviewmodelfunction());
  }

  @override
  String toString() {
    return '''
newspageResponse: ${newspageResponse},
FoldercreationResponse: ${FoldercreationResponse},
newspagefolderinsideResponse: ${newspagefolderinsideResponse},
newspagefolderResponse: ${newspagefolderResponse},
notificationpageResponse: ${notificationpageResponse}
    ''';
  }
}
