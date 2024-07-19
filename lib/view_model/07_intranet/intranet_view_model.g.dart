// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intranet_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$IntranetViewModel on IntranetViewModelBase, Store {
  late final _$searchTypeAtom =
      Atom(name: 'IntranetViewModelBase.searchType', context: context);

  @override
  String? get searchType {
    _$searchTypeAtom.reportRead();
    return super.searchType;
  }

  @override
  set searchType(String? value) {
    _$searchTypeAtom.reportWrite(value, super.searchType, () {
      super.searchType = value;
    });
  }

  late final _$folderNamesAtom =
      Atom(name: 'IntranetViewModelBase.folderNames', context: context);

  @override
  List<String> get folderNames {
    _$folderNamesAtom.reportRead();
    return super.folderNames;
  }

  @override
  set folderNames(List<String> value) {
    _$folderNamesAtom.reportWrite(value, super.folderNames, () {
      super.folderNames = value;
    });
  }

  late final _$parentFolderIdAtom =
      Atom(name: 'IntranetViewModelBase.parentFolderId', context: context);

  @override
  int? get parentFolderId {
    _$parentFolderIdAtom.reportRead();
    return super.parentFolderId;
  }

  @override
  set parentFolderId(int? value) {
    _$parentFolderIdAtom.reportWrite(value, super.parentFolderId, () {
      super.parentFolderId = value;
    });
  }

  late final _$selectedFileNameAtom =
      Atom(name: 'IntranetViewModelBase.selectedFileName', context: context);

  @override
  String? get selectedFileName {
    _$selectedFileNameAtom.reportRead();
    return super.selectedFileName;
  }

  @override
  set selectedFileName(String? value) {
    _$selectedFileNameAtom.reportWrite(value, super.selectedFileName, () {
      super.selectedFileName = value;
    });
  }

  late final _$selectedFilePathAtom =
      Atom(name: 'IntranetViewModelBase.selectedFilePath', context: context);

  @override
  String? get selectedFilePath {
    _$selectedFilePathAtom.reportRead();
    return super.selectedFilePath;
  }

  @override
  set selectedFilePath(String? value) {
    _$selectedFilePathAtom.reportWrite(value, super.selectedFilePath, () {
      super.selectedFilePath = value;
    });
  }

  late final _$loadinIndexFileAtom =
      Atom(name: 'IntranetViewModelBase.loadinIndexFile', context: context);

  @override
  int? get loadinIndexFile {
    _$loadinIndexFileAtom.reportRead();
    return super.loadinIndexFile;
  }

  @override
  set loadinIndexFile(int? value) {
    _$loadinIndexFileAtom.reportWrite(value, super.loadinIndexFile, () {
      super.loadinIndexFile = value;
    });
  }

  late final _$loadinIndexFolderAtom =
      Atom(name: 'IntranetViewModelBase.loadinIndexFolder', context: context);

  @override
  int? get loadinIndexFolder {
    _$loadinIndexFolderAtom.reportRead();
    return super.loadinIndexFolder;
  }

  @override
  set loadinIndexFolder(int? value) {
    _$loadinIndexFolderAtom.reportWrite(value, super.loadinIndexFolder, () {
      super.loadinIndexFolder = value;
    });
  }

  late final _$selectedExpiryDateAtom =
      Atom(name: 'IntranetViewModelBase.selectedExpiryDate', context: context);

  @override
  DateTime? get selectedExpiryDate {
    _$selectedExpiryDateAtom.reportRead();
    return super.selectedExpiryDate;
  }

  @override
  set selectedExpiryDate(DateTime? value) {
    _$selectedExpiryDateAtom.reportWrite(value, super.selectedExpiryDate, () {
      super.selectedExpiryDate = value;
    });
  }

  late final _$intranetpageResponseAtom = Atom(
      name: 'IntranetViewModelBase.intranetpageResponse', context: context);

  @override
  ApiResponse<FolderListModel> get intranetpageResponse {
    _$intranetpageResponseAtom.reportRead();
    return super.intranetpageResponse;
  }

  @override
  set intranetpageResponse(ApiResponse<FolderListModel> value) {
    _$intranetpageResponseAtom.reportWrite(value, super.intranetpageResponse,
        () {
      super.intranetpageResponse = value;
    });
  }

  late final _$intranetfolderinsideResponseAtom = Atom(
      name: 'IntranetViewModelBase.intranetfolderinsideResponse',
      context: context);

  @override
  ApiResponse<FolderListModel> get intranetfolderinsideResponse {
    _$intranetfolderinsideResponseAtom.reportRead();
    return super.intranetfolderinsideResponse;
  }

  @override
  set intranetfolderinsideResponse(ApiResponse<FolderListModel> value) {
    _$intranetfolderinsideResponseAtom
        .reportWrite(value, super.intranetfolderinsideResponse, () {
      super.intranetfolderinsideResponse = value;
    });
  }

  late final _$intranetFoldersResponseAtom = Atom(
      name: 'IntranetViewModelBase.intranetFoldersResponse', context: context);

  @override
  ApiResponse<FolderListModel> get intranetFoldersResponse {
    _$intranetFoldersResponseAtom.reportRead();
    return super.intranetFoldersResponse;
  }

  @override
  set intranetFoldersResponse(ApiResponse<FolderListModel> value) {
    _$intranetFoldersResponseAtom
        .reportWrite(value, super.intranetFoldersResponse, () {
      super.intranetFoldersResponse = value;
    });
  }

  late final _$intranetFoldersResponse2Atom = Atom(
      name: 'IntranetViewModelBase.intranetFoldersResponse2', context: context);

  @override
  ApiResponse<FolderListModel> get intranetFoldersResponse2 {
    _$intranetFoldersResponse2Atom.reportRead();
    return super.intranetFoldersResponse2;
  }

  @override
  set intranetFoldersResponse2(ApiResponse<FolderListModel> value) {
    _$intranetFoldersResponse2Atom
        .reportWrite(value, super.intranetFoldersResponse2, () {
      super.intranetFoldersResponse2 = value;
    });
  }

  late final _$addFolderResponseAtom =
      Atom(name: 'IntranetViewModelBase.addFolderResponse', context: context);

  @override
  ApiResponse<String> get addFolderResponse {
    _$addFolderResponseAtom.reportRead();
    return super.addFolderResponse;
  }

  @override
  set addFolderResponse(ApiResponse<String> value) {
    _$addFolderResponseAtom.reportWrite(value, super.addFolderResponse, () {
      super.addFolderResponse = value;
    });
  }

  late final _$editIntranetFolderResponseAtom = Atom(
      name: 'IntranetViewModelBase.editIntranetFolderResponse',
      context: context);

  @override
  ApiResponse<String> get editIntranetFolderResponse {
    _$editIntranetFolderResponseAtom.reportRead();
    return super.editIntranetFolderResponse;
  }

  @override
  set editIntranetFolderResponse(ApiResponse<String> value) {
    _$editIntranetFolderResponseAtom
        .reportWrite(value, super.editIntranetFolderResponse, () {
      super.editIntranetFolderResponse = value;
    });
  }

  late final _$addIntranetFileResponseAtom = Atom(
      name: 'IntranetViewModelBase.addIntranetFileResponse', context: context);

  @override
  ApiResponse<String> get addIntranetFileResponse {
    _$addIntranetFileResponseAtom.reportRead();
    return super.addIntranetFileResponse;
  }

  @override
  set addIntranetFileResponse(ApiResponse<String> value) {
    _$addIntranetFileResponseAtom
        .reportWrite(value, super.addIntranetFileResponse, () {
      super.addIntranetFileResponse = value;
    });
  }

  late final _$editIntranetFileResponseAtom = Atom(
      name: 'IntranetViewModelBase.editIntranetFileResponse', context: context);

  @override
  ApiResponse<String> get editIntranetFileResponse {
    _$editIntranetFileResponseAtom.reportRead();
    return super.editIntranetFileResponse;
  }

  @override
  set editIntranetFileResponse(ApiResponse<String> value) {
    _$editIntranetFileResponseAtom
        .reportWrite(value, super.editIntranetFileResponse, () {
      super.editIntranetFileResponse = value;
    });
  }

  late final _$expiryFileResponseAtom =
      Atom(name: 'IntranetViewModelBase.expiryFileResponse', context: context);

  @override
  ApiResponse<FolderListModel> get expiryFileResponse {
    _$expiryFileResponseAtom.reportRead();
    return super.expiryFileResponse;
  }

  @override
  set expiryFileResponse(ApiResponse<FolderListModel> value) {
    _$expiryFileResponseAtom.reportWrite(value, super.expiryFileResponse, () {
      super.expiryFileResponse = value;
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

  late final _$getIntranetFoldersApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.getIntranetFoldersApi',
      context: context);

  @override
  Future<void> getIntranetFoldersApi({required num parentFolderId}) {
    return _$getIntranetFoldersApiAsyncAction
        .run(() => super.getIntranetFoldersApi(parentFolderId: parentFolderId));
  }

  late final _$addIntranetFolderAsyncAction =
      AsyncAction('IntranetViewModelBase.addIntranetFolder', context: context);

  @override
  Future<void> addIntranetFolder(
      {required BuildContext context,
      required String name,
      required num parentfolder}) {
    return _$addIntranetFolderAsyncAction.run(() => super.addIntranetFolder(
        context: context, name: name, parentfolder: parentfolder));
  }

  late final _$editIntranetFolderApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.editIntranetFolderApi',
      context: context);

  @override
  Future<void> editIntranetFolderApi(
      {required BuildContext context,
      required int folderId,
      required int parentFolderId,
      required String name}) {
    return _$editIntranetFolderApiAsyncAction.run(() => super
        .editIntranetFolderApi(
            context: context,
            folderId: folderId,
            parentFolderId: parentFolderId,
            name: name));
  }

  late final _$addIntranetFileApiAsyncAction =
      AsyncAction('IntranetViewModelBase.addIntranetFileApi', context: context);

  @override
  Future<void> addIntranetFileApi(
      {required BuildContext context,
      required num parentfolder,
      String? files}) {
    return _$addIntranetFileApiAsyncAction.run(() => super.addIntranetFileApi(
        context: context, parentfolder: parentfolder, files: files));
  }

  late final _$editIntranetFilesApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.editIntranetFilesApi',
      context: context);

  @override
  Future<void> editIntranetFilesApi(
      {required BuildContext context,
      required int filesId,
      required int parentFolderId,
      required String name}) {
    return _$editIntranetFilesApiAsyncAction.run(() => super
        .editIntranetFilesApi(
            context: context,
            filesId: filesId,
            parentFolderId: parentFolderId,
            name: name));
  }

  late final _$deleteIntranetFilesApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.deleteIntranetFilesApi',
      context: context);

  @override
  Future<void> deleteIntranetFilesApi(
      {required BuildContext context,
      required int fileId,
      required num parentFolderId}) {
    return _$deleteIntranetFilesApiAsyncAction.run(() => super
        .deleteIntranetFilesApi(
            context: context, fileId: fileId, parentFolderId: parentFolderId));
  }

  late final _$exipryDateFileApiAsyncAction =
      AsyncAction('IntranetViewModelBase.exipryDateFileApi', context: context);

  @override
  Future<void> exipryDateFileApi(
      {required BuildContext context,
      required int fileId,
      required String expiry,
      required num parentFolderId}) {
    return _$exipryDateFileApiAsyncAction.run(() => super.exipryDateFileApi(
        context: context,
        fileId: fileId,
        expiry: expiry,
        parentFolderId: parentFolderId));
  }

  late final _$deleteIntranetFolderApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.deleteIntranetFolderApi',
      context: context);

  @override
  Future<void> deleteIntranetFolderApi(
      {required BuildContext context,
      required int folderId,
      required num parentFolderId}) {
    return _$deleteIntranetFolderApiAsyncAction.run(() => super
        .deleteIntranetFolderApi(
            context: context,
            folderId: folderId,
            parentFolderId: parentFolderId));
  }

  late final _$folderSearchIntranetApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.folderSearchIntranetApi',
      context: context);

  @override
  Future<void> folderSearchIntranetApi(
      String searchData, int folderId, String searchType) {
    return _$folderSearchIntranetApiAsyncAction.run(
        () => super.folderSearchIntranetApi(searchData, folderId, searchType));
  }

  late final _$fileFolderSearchApiAsyncAction = AsyncAction(
      'IntranetViewModelBase.fileFolderSearchApi',
      context: context);

  @override
  Future<void> fileFolderSearchApi(
      String searchData, int folderId, String searchType) {
    return _$fileFolderSearchApiAsyncAction
        .run(() => super.fileFolderSearchApi(searchData, folderId, searchType));
  }

  late final _$IntranetViewModelBaseActionController =
      ActionController(name: 'IntranetViewModelBase', context: context);

  @override
  dynamic expiryDatePickerFn(
      BuildContext context, dynamic date, int fileId, num parentFolderId) {
    final _$actionInfo = _$IntranetViewModelBaseActionController.startAction(
        name: 'IntranetViewModelBase.expiryDatePickerFn');
    try {
      return super.expiryDatePickerFn(context, date, fileId, parentFolderId);
    } finally {
      _$IntranetViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
searchType: ${searchType},
folderNames: ${folderNames},
parentFolderId: ${parentFolderId},
selectedFileName: ${selectedFileName},
selectedFilePath: ${selectedFilePath},
loadinIndexFile: ${loadinIndexFile},
loadinIndexFolder: ${loadinIndexFolder},
selectedExpiryDate: ${selectedExpiryDate},
intranetpageResponse: ${intranetpageResponse},
intranetfolderinsideResponse: ${intranetfolderinsideResponse},
intranetFoldersResponse: ${intranetFoldersResponse},
intranetFoldersResponse2: ${intranetFoldersResponse2},
addFolderResponse: ${addFolderResponse},
editIntranetFolderResponse: ${editIntranetFolderResponse},
addIntranetFileResponse: ${addIntranetFileResponse},
editIntranetFileResponse: ${editIntranetFileResponse},
expiryFileResponse: ${expiryFileResponse}
    ''';
  }
}
