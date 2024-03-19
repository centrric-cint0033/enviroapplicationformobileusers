// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oh&s_news_fldr_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OhsNewsFolderViewModel on OhsNewsFolderViewModelBase, Store {
  late final _$newspagefolderResponseAtom = Atom(
      name: 'OhsNewsFolderViewModelBase.newspagefolderResponse',
      context: context);

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

  late final _$newspagefolderinsideResponseAtom = Atom(
      name: 'OhsNewsFolderViewModelBase.newspagefolderinsideResponse',
      context: context);

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

  late final _$ohsnewsfolderviewmodelfunctionAsyncAction = AsyncAction(
      'OhsNewsFolderViewModelBase.ohsnewsfolderviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnewsfolderviewmodelfunction(int id) {
    return _$ohsnewsfolderviewmodelfunctionAsyncAction
        .run(() => super.ohsnewsfolderviewmodelfunction(id));
  }

  late final _$newspagefolderinsidefunctionAsyncAction = AsyncAction(
      'OhsNewsFolderViewModelBase.newspagefolderinsidefunction',
      context: context);

  @override
  Future<void> newspagefolderinsidefunction(int id) {
    return _$newspagefolderinsidefunctionAsyncAction
        .run(() => super.newspagefolderinsidefunction(id));
  }

  @override
  String toString() {
    return '''
newspagefolderResponse: ${newspagefolderResponse},
newspagefolderinsideResponse: ${newspagefolderinsideResponse}
    ''';
  }
}
