// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_rename_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FoldersRenameViewModel on FoldersRenameViewModelBase, Store {
  late final _$renameResponseAtom =
      Atom(name: 'FoldersRenameViewModelBase.renameResponse', context: context);

  @override
  ApiResponse<String> get renameResponse {
    _$renameResponseAtom.reportRead();
    return super.renameResponse;
  }

  @override
  set renameResponse(ApiResponse<String> value) {
    _$renameResponseAtom.reportWrite(value, super.renameResponse, () {
      super.renameResponse = value;
    });
  }

  late final _$folderrenameviewmodelfunctionAsyncAction = AsyncAction(
      'FoldersRenameViewModelBase.folderrenameviewmodelfunction',
      context: context);

  @override
  Future<void> folderrenameviewmodelfunction(String folderName, int id) {
    return _$folderrenameviewmodelfunctionAsyncAction
        .run(() => super.folderrenameviewmodelfunction(folderName, id));
  }

  @override
  String toString() {
    return '''
renameResponse: ${renameResponse}
    ''';
  }
}
