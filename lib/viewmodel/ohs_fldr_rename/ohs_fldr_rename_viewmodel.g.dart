// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohs_fldr_rename_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FolderRenameViewModel on FolderRenameViewModelBase, Store {
  late final _$FolderrenameResponseAtom = Atom(
      name: 'FolderRenameViewModelBase.FolderrenameResponse', context: context);

  @override
  ApiResponse<String> get FolderrenameResponse {
    _$FolderrenameResponseAtom.reportRead();
    return super.FolderrenameResponse;
  }

  @override
  set FolderrenameResponse(ApiResponse<String> value) {
    _$FolderrenameResponseAtom.reportWrite(value, super.FolderrenameResponse,
        () {
      super.FolderrenameResponse = value;
    });
  }

  late final _$ohsfoldercreationviewmodelfunctionAsyncAction = AsyncAction(
      'FolderRenameViewModelBase.ohsfoldercreationviewmodelfunction',
      context: context);

  @override
  Future<void> ohsfoldercreationviewmodelfunction(String folderName, int id) {
    return _$ohsfoldercreationviewmodelfunctionAsyncAction
        .run(() => super.ohsfoldercreationviewmodelfunction(folderName, id));
  }

  @override
  String toString() {
    return '''
FolderrenameResponse: ${FolderrenameResponse}
    ''';
  }
}
