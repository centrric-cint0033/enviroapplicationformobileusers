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
  ApiResponse<List<OhsNewsfldrRespModel>> get newspagefolderResponse {
    _$newspagefolderResponseAtom.reportRead();
    return super.newspagefolderResponse;
  }

  @override
  set newspagefolderResponse(ApiResponse<List<OhsNewsfldrRespModel>> value) {
    _$newspagefolderResponseAtom
        .reportWrite(value, super.newspagefolderResponse, () {
      super.newspagefolderResponse = value;
    });
  }

  late final _$ohsnewsfolderviewmodelfunctionAsyncAction = AsyncAction(
      'OhsNewsFolderViewModelBase.ohsnewsfolderviewmodelfunction',
      context: context);

  @override
  Future<void> ohsnewsfolderviewmodelfunction() {
    return _$ohsnewsfolderviewmodelfunctionAsyncAction
        .run(() => super.ohsnewsfolderviewmodelfunction());
  }

  @override
  String toString() {
    return '''
newspagefolderResponse: ${newspagefolderResponse}
    ''';
  }
}
