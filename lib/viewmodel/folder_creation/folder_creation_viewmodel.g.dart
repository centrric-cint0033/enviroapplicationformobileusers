// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_creation_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FolderCreationViewModel on FolderCreationViewModelBase, Store {
  late final _$FoldercreationResponseAtom = Atom(
      name: 'FolderCreationViewModelBase.FoldercreationResponse',
      context: context);

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

  late final _$ohsfoldercreationviewmodelfunctionAsyncAction = AsyncAction(
      'FolderCreationViewModelBase.ohsfoldercreationviewmodelfunction',
      context: context);

  @override
  Future<void> ohsfoldercreationviewmodelfunction(String folderName, int id) {
    return _$ohsfoldercreationviewmodelfunctionAsyncAction
        .run(() => super.ohsfoldercreationviewmodelfunction(folderName, id));
  }

  @override
  String toString() {
    return '''
FoldercreationResponse: ${FoldercreationResponse}
    ''';
  }
}
