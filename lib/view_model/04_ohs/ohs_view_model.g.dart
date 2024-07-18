// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ohs_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OHSViewModel on OHSViewModelBase, Store {
  late final _$addCommentControllerAtom =
      Atom(name: 'OHSViewModelBase.addCommentController', context: context);

  @override
  TextEditingController get addCommentController {
    _$addCommentControllerAtom.reportRead();
    return super.addCommentController;
  }

  @override
  set addCommentController(TextEditingController value) {
    _$addCommentControllerAtom.reportWrite(value, super.addCommentController,
        () {
      super.addCommentController = value;
    });
  }

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

  late final _$addNotificationResponseAtom =
      Atom(name: 'OHSViewModelBase.addNotificationResponse', context: context);

  @override
  ApiResponse<OhsRespModel> get addNotificationResponse {
    _$addNotificationResponseAtom.reportRead();
    return super.addNotificationResponse;
  }

  @override
  set addNotificationResponse(ApiResponse<OhsRespModel> value) {
    _$addNotificationResponseAtom
        .reportWrite(value, super.addNotificationResponse, () {
      super.addNotificationResponse = value;
    });
  }

  late final _$selectedFileNameNotificationAtom = Atom(
      name: 'OHSViewModelBase.selectedFileNameNotification', context: context);

  @override
  String? get selectedFileNameNotification {
    _$selectedFileNameNotificationAtom.reportRead();
    return super.selectedFileNameNotification;
  }

  @override
  set selectedFileNameNotification(String? value) {
    _$selectedFileNameNotificationAtom
        .reportWrite(value, super.selectedFileNameNotification, () {
      super.selectedFileNameNotification = value;
    });
  }

  late final _$searchTypeAtom =
      Atom(name: 'OHSViewModelBase.searchType', context: context);

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

  late final _$selectedFileNameAtom =
      Atom(name: 'OHSViewModelBase.selectedFileName', context: context);

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
      Atom(name: 'OHSViewModelBase.selectedFilePath', context: context);

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

  late final _$parentFolderIdAtom =
      Atom(name: 'OHSViewModelBase.parentFolderId', context: context);

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

  late final _$loadinIndexFileAtom =
      Atom(name: 'OHSViewModelBase.loadinIndexFile', context: context);

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
      Atom(name: 'OHSViewModelBase.loadinIndexFolder', context: context);

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
      Atom(name: 'OHSViewModelBase.selectedExpiryDate', context: context);

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

  late final _$folderNamesAtom =
      Atom(name: 'OHSViewModelBase.folderNames', context: context);

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
  ApiResponse<FolderListModel> get newspagefolderinsideResponse {
    _$newspagefolderinsideResponseAtom.reportRead();
    return super.newspagefolderinsideResponse;
  }

  @override
  set newspagefolderinsideResponse(ApiResponse<FolderListModel> value) {
    _$newspagefolderinsideResponseAtom
        .reportWrite(value, super.newspagefolderinsideResponse, () {
      super.newspagefolderinsideResponse = value;
    });
  }

  late final _$newspagefolderResponseAtom =
      Atom(name: 'OHSViewModelBase.newspagefolderResponse', context: context);

  @override
  ApiResponse<FolderListModel> get newspagefolderResponse {
    _$newspagefolderResponseAtom.reportRead();
    return super.newspagefolderResponse;
  }

  @override
  set newspagefolderResponse(ApiResponse<FolderListModel> value) {
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

  late final _$renameResponseAtom =
      Atom(name: 'OHSViewModelBase.renameResponse', context: context);

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

  late final _$deleteResponseAtom =
      Atom(name: 'OHSViewModelBase.deleteResponse', context: context);

  @override
  ApiResponse<String> get deleteResponse {
    _$deleteResponseAtom.reportRead();
    return super.deleteResponse;
  }

  @override
  set deleteResponse(ApiResponse<String> value) {
    _$deleteResponseAtom.reportWrite(value, super.deleteResponse, () {
      super.deleteResponse = value;
    });
  }

  late final _$addNewsResponseAtom =
      Atom(name: 'OHSViewModelBase.addNewsResponse', context: context);

  @override
  ApiResponse<OhsRespModel> get addNewsResponse {
    _$addNewsResponseAtom.reportRead();
    return super.addNewsResponse;
  }

  @override
  set addNewsResponse(ApiResponse<OhsRespModel> value) {
    _$addNewsResponseAtom.reportWrite(value, super.addNewsResponse, () {
      super.addNewsResponse = value;
    });
  }

  late final _$addCommentNotifyResponseAtom =
      Atom(name: 'OHSViewModelBase.addCommentNotifyResponse', context: context);

  @override
  ApiResponse<String> get addCommentNotifyResponse {
    _$addCommentNotifyResponseAtom.reportRead();
    return super.addCommentNotifyResponse;
  }

  @override
  set addCommentNotifyResponse(ApiResponse<String> value) {
    _$addCommentNotifyResponseAtom
        .reportWrite(value, super.addCommentNotifyResponse, () {
      super.addCommentNotifyResponse = value;
    });
  }

  late final _$deleteNotificationResponseAtom = Atom(
      name: 'OHSViewModelBase.deleteNotificationResponse', context: context);

  @override
  ApiResponse<String> get deleteNotificationResponse {
    _$deleteNotificationResponseAtom.reportRead();
    return super.deleteNotificationResponse;
  }

  @override
  set deleteNotificationResponse(ApiResponse<String> value) {
    _$deleteNotificationResponseAtom
        .reportWrite(value, super.deleteNotificationResponse, () {
      super.deleteNotificationResponse = value;
    });
  }

  late final _$statusNotificationResponseAtom = Atom(
      name: 'OHSViewModelBase.statusNotificationResponse', context: context);

  @override
  ApiResponse<String> get statusNotificationResponse {
    _$statusNotificationResponseAtom.reportRead();
    return super.statusNotificationResponse;
  }

  @override
  set statusNotificationResponse(ApiResponse<String> value) {
    _$statusNotificationResponseAtom
        .reportWrite(value, super.statusNotificationResponse, () {
      super.statusNotificationResponse = value;
    });
  }

  late final _$deleteNewsResponseAtom =
      Atom(name: 'OHSViewModelBase.deleteNewsResponse', context: context);

  @override
  ApiResponse<String> get deleteNewsResponse {
    _$deleteNewsResponseAtom.reportRead();
    return super.deleteNewsResponse;
  }

  @override
  set deleteNewsResponse(ApiResponse<String> value) {
    _$deleteNewsResponseAtom.reportWrite(value, super.deleteNewsResponse, () {
      super.deleteNewsResponse = value;
    });
  }

  late final _$editNewsResponseAtom =
      Atom(name: 'OHSViewModelBase.editNewsResponse', context: context);

  @override
  ApiResponse<OhsRespModel> get editNewsResponse {
    _$editNewsResponseAtom.reportRead();
    return super.editNewsResponse;
  }

  @override
  set editNewsResponse(ApiResponse<OhsRespModel> value) {
    _$editNewsResponseAtom.reportWrite(value, super.editNewsResponse, () {
      super.editNewsResponse = value;
    });
  }

  late final _$statusNewsResponseAtom =
      Atom(name: 'OHSViewModelBase.statusNewsResponse', context: context);

  @override
  ApiResponse<String> get statusNewsResponse {
    _$statusNewsResponseAtom.reportRead();
    return super.statusNewsResponse;
  }

  @override
  set statusNewsResponse(ApiResponse<String> value) {
    _$statusNewsResponseAtom.reportWrite(value, super.statusNewsResponse, () {
      super.statusNewsResponse = value;
    });
  }

  late final _$ohsFoldersResponseAtom =
      Atom(name: 'OHSViewModelBase.ohsFoldersResponse', context: context);

  @override
  ApiResponse<FolderListModel> get ohsFoldersResponse {
    _$ohsFoldersResponseAtom.reportRead();
    return super.ohsFoldersResponse;
  }

  @override
  set ohsFoldersResponse(ApiResponse<FolderListModel> value) {
    _$ohsFoldersResponseAtom.reportWrite(value, super.ohsFoldersResponse, () {
      super.ohsFoldersResponse = value;
    });
  }

  late final _$ohsFoldersResponse2Atom =
      Atom(name: 'OHSViewModelBase.ohsFoldersResponse2', context: context);

  @override
  ApiResponse<FolderListModel> get ohsFoldersResponse2 {
    _$ohsFoldersResponse2Atom.reportRead();
    return super.ohsFoldersResponse2;
  }

  @override
  set ohsFoldersResponse2(ApiResponse<FolderListModel> value) {
    _$ohsFoldersResponse2Atom.reportWrite(value, super.ohsFoldersResponse2, () {
      super.ohsFoldersResponse2 = value;
    });
  }

  late final _$addFolderResponseAtom =
      Atom(name: 'OHSViewModelBase.addFolderResponse', context: context);

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

  late final _$ohsAddFileResponseAtom =
      Atom(name: 'OHSViewModelBase.ohsAddFileResponse', context: context);

  @override
  ApiResponse<dynamic> get ohsAddFileResponse {
    _$ohsAddFileResponseAtom.reportRead();
    return super.ohsAddFileResponse;
  }

  @override
  set ohsAddFileResponse(ApiResponse<dynamic> value) {
    _$ohsAddFileResponseAtom.reportWrite(value, super.ohsAddFileResponse, () {
      super.ohsAddFileResponse = value;
    });
  }

  late final _$ohsEditFolderResponseAtom =
      Atom(name: 'OHSViewModelBase.ohsEditFolderResponse', context: context);

  @override
  ApiResponse<String> get ohsEditFolderResponse {
    _$ohsEditFolderResponseAtom.reportRead();
    return super.ohsEditFolderResponse;
  }

  @override
  set ohsEditFolderResponse(ApiResponse<String> value) {
    _$ohsEditFolderResponseAtom.reportWrite(value, super.ohsEditFolderResponse,
        () {
      super.ohsEditFolderResponse = value;
    });
  }

  late final _$ohsEditFileResponseAtom =
      Atom(name: 'OHSViewModelBase.ohsEditFileResponse', context: context);

  @override
  ApiResponse<String> get ohsEditFileResponse {
    _$ohsEditFileResponseAtom.reportRead();
    return super.ohsEditFileResponse;
  }

  @override
  set ohsEditFileResponse(ApiResponse<String> value) {
    _$ohsEditFileResponseAtom.reportWrite(value, super.ohsEditFileResponse, () {
      super.ohsEditFileResponse = value;
    });
  }

  late final _$expiryFileOhsResponseAtom =
      Atom(name: 'OHSViewModelBase.expiryFileOhsResponse', context: context);

  @override
  ApiResponse<FolderListModel> get expiryFileOhsResponse {
    _$expiryFileOhsResponseAtom.reportRead();
    return super.expiryFileOhsResponse;
  }

  @override
  set expiryFileOhsResponse(ApiResponse<FolderListModel> value) {
    _$expiryFileOhsResponseAtom.reportWrite(value, super.expiryFileOhsResponse,
        () {
      super.expiryFileOhsResponse = value;
    });
  }

  late final _$ohsNewsApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsNewsApi', context: context);

  @override
  Future<void> ohsNewsApi() {
    return _$ohsNewsApiAsyncAction.run(() => super.ohsNewsApi());
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

  late final _$ohsNotificationApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsNotificationApi', context: context);

  @override
  Future<void> ohsNotificationApi({int? page}) {
    return _$ohsNotificationApiAsyncAction
        .run(() => super.ohsNotificationApi(page: page));
  }

  late final _$ohsFolerRenameApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsFolerRenameApi', context: context);

  @override
  Future<void> ohsFolerRenameApi(
      BuildContext context, String folderName, int id) {
    return _$ohsFolerRenameApiAsyncAction
        .run(() => super.ohsFolerRenameApi(context, folderName, id));
  }

  late final _$folderdeleteviewmodelfunctionAsyncAction = AsyncAction(
      'OHSViewModelBase.folderdeleteviewmodelfunction',
      context: context);

  @override
  Future<void> folderdeleteviewmodelfunction(
      String folders, int id, int parentId) {
    return _$folderdeleteviewmodelfunctionAsyncAction
        .run(() => super.folderdeleteviewmodelfunction(folders, id, parentId));
  }

  late final _$ohsAddNotificationApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsAddNotificationApi', context: context);

  @override
  Future<void> ohsAddNotificationApi(
      {required BuildContext context, required OhsRespModel data}) {
    return _$ohsAddNotificationApiAsyncAction
        .run(() => super.ohsAddNotificationApi(context: context, data: data));
  }

  late final _$ohsAddNewsApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsAddNewsApi', context: context);

  @override
  Future<void> ohsAddNewsApi(
      {required BuildContext context, required OhsRespModel data}) {
    return _$ohsAddNewsApiAsyncAction
        .run(() => super.ohsAddNewsApi(context: context, data: data));
  }

  late final _$ohsAddCommentNotificationApiAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsAddCommentNotificationApi',
      context: context);

  @override
  Future<void> ohsAddCommentNotificationApi(
      {required BuildContext context,
      required int notificationId,
      required String comment}) {
    return _$ohsAddCommentNotificationApiAsyncAction.run(() => super
        .ohsAddCommentNotificationApi(
            context: context,
            notificationId: notificationId,
            comment: comment));
  }

  late final _$ohsDeleteNotificationApiAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsDeleteNotificationApi',
      context: context);

  @override
  Future<void> ohsDeleteNotificationApi(
      {required BuildContext context, required int notificationId}) {
    return _$ohsDeleteNotificationApiAsyncAction.run(() => super
        .ohsDeleteNotificationApi(
            context: context, notificationId: notificationId));
  }

  late final _$ohsStatusNotificationApiAsyncAction = AsyncAction(
      'OHSViewModelBase.ohsStatusNotificationApi',
      context: context);

  @override
  Future<void> ohsStatusNotificationApi(
      {required BuildContext context, required int notificationId}) {
    return _$ohsStatusNotificationApiAsyncAction.run(() => super
        .ohsStatusNotificationApi(
            context: context, notificationId: notificationId));
  }

  late final _$ohsDeleteNewsApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsDeleteNewsApi', context: context);

  @override
  Future<void> ohsDeleteNewsApi(
      {required BuildContext context, required int newsId}) {
    return _$ohsDeleteNewsApiAsyncAction
        .run(() => super.ohsDeleteNewsApi(context: context, newsId: newsId));
  }

  late final _$ohsEditNewsApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsEditNewsApi', context: context);

  @override
  Future<void> ohsEditNewsApi(
      {required BuildContext context,
      required OhsRespModel data,
      required int newsId}) {
    return _$ohsEditNewsApiAsyncAction.run(() =>
        super.ohsEditNewsApi(context: context, data: data, newsId: newsId));
  }

  late final _$ohsStatusNewsApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsStatusNewsApi', context: context);

  @override
  Future<void> ohsStatusNewsApi(
      {required BuildContext context, required int newsId}) {
    return _$ohsStatusNewsApiAsyncAction
        .run(() => super.ohsStatusNewsApi(context: context, newsId: newsId));
  }

  late final _$getFoldersOhsAsyncAction =
      AsyncAction('OHSViewModelBase.getFoldersOhs', context: context);

  @override
  Future<void> getFoldersOhs({required num parentFolderId}) {
    return _$getFoldersOhsAsyncAction
        .run(() => super.getFoldersOhs(parentFolderId: parentFolderId));
  }

  late final _$addFolderOhsAsyncAction =
      AsyncAction('OHSViewModelBase.addFolderOhs', context: context);

  @override
  Future<void> addFolderOhs(
      {required String name,
      required num parentfolder,
      required BuildContext context}) {
    return _$addFolderOhsAsyncAction.run(() => super.addFolderOhs(
        name: name, parentfolder: parentfolder, context: context));
  }

  late final _$folderSearchOhsApiAsyncAction =
      AsyncAction('OHSViewModelBase.folderSearchOhsApi', context: context);

  @override
  Future<void> folderSearchOhsApi(
      String searchData, num folderId, String searchType) {
    return _$folderSearchOhsApiAsyncAction
        .run(() => super.folderSearchOhsApi(searchData, folderId, searchType));
  }

  late final _$ohsfileFolderSearchApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsfileFolderSearchApi', context: context);

  @override
  Future<void> ohsfileFolderSearchApi(
      String searchData, num folderId, String searchType) {
    return _$ohsfileFolderSearchApiAsyncAction.run(
        () => super.ohsfileFolderSearchApi(searchData, folderId, searchType));
  }

  late final _$ohsAddFileAsyncAction =
      AsyncAction('OHSViewModelBase.ohsAddFile', context: context);

  @override
  Future<void> ohsAddFile(
      {required String name,
      required num parentfolder,
      String? files,
      required BuildContext context}) {
    return _$ohsAddFileAsyncAction.run(() => super.ohsAddFile(
        name: name,
        parentfolder: parentfolder,
        files: files,
        context: context));
  }

  late final _$editFolderOhsApiAsyncAction =
      AsyncAction('OHSViewModelBase.editFolderOhsApi', context: context);

  @override
  Future<void> editFolderOhsApi(
      {required int folderId,
      required int parentFolderId,
      required String name,
      required BuildContext context}) {
    return _$editFolderOhsApiAsyncAction.run(() => super.editFolderOhsApi(
        folderId: folderId,
        parentFolderId: parentFolderId,
        name: name,
        context: context));
  }

  late final _$ohsDeleteFolderApiAsyncAction =
      AsyncAction('OHSViewModelBase.ohsDeleteFolderApi', context: context);

  @override
  Future<void> ohsDeleteFolderApi(
      {required int folderId,
      required BuildContext context,
      required num parentFolderId}) {
    return _$ohsDeleteFolderApiAsyncAction.run(() => super.ohsDeleteFolderApi(
        folderId: folderId, context: context, parentFolderId: parentFolderId));
  }

  late final _$editFileOhsApiAsyncAction =
      AsyncAction('OHSViewModelBase.editFileOhsApi', context: context);

  @override
  Future<void> editFileOhsApi(
      {required int fileId,
      required int parentFolderId,
      required String name,
      required BuildContext context}) {
    return _$editFileOhsApiAsyncAction.run(() => super.editFileOhsApi(
        fileId: fileId,
        parentFolderId: parentFolderId,
        name: name,
        context: context));
  }

  late final _$deleteFilesOhsApiAsyncAction =
      AsyncAction('OHSViewModelBase.deleteFilesOhsApi', context: context);

  @override
  Future<void> deleteFilesOhsApi(
      {required int fileId,
      required BuildContext context,
      required num parentFolderId}) {
    return _$deleteFilesOhsApiAsyncAction.run(() => super.deleteFilesOhsApi(
        fileId: fileId, context: context, parentFolderId: parentFolderId));
  }

  late final _$exipryDateFileApiAsyncAction =
      AsyncAction('OHSViewModelBase.exipryDateFileApi', context: context);

  @override
  Future<void> exipryDateFileApi(
      {required int fileId,
      required String expiry,
      required BuildContext context,
      required num parentFolderId}) {
    return _$exipryDateFileApiAsyncAction.run(() => super.exipryDateFileApi(
        fileId: fileId,
        expiry: expiry,
        context: context,
        parentFolderId: parentFolderId));
  }

  late final _$OHSViewModelBaseActionController =
      ActionController(name: 'OHSViewModelBase', context: context);

  @override
  dynamic expiryDatePickerFn(
      BuildContext context, dynamic date, int fileId, num parentFolderId) {
    final _$actionInfo = _$OHSViewModelBaseActionController.startAction(
        name: 'OHSViewModelBase.expiryDatePickerFn');
    try {
      return super.expiryDatePickerFn(context, date, fileId, parentFolderId);
    } finally {
      _$OHSViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
addCommentController: ${addCommentController},
newspageResponse: ${newspageResponse},
addNotificationResponse: ${addNotificationResponse},
selectedFileNameNotification: ${selectedFileNameNotification},
searchType: ${searchType},
selectedFileName: ${selectedFileName},
selectedFilePath: ${selectedFilePath},
parentFolderId: ${parentFolderId},
loadinIndexFile: ${loadinIndexFile},
loadinIndexFolder: ${loadinIndexFolder},
selectedExpiryDate: ${selectedExpiryDate},
folderNames: ${folderNames},
FoldercreationResponse: ${FoldercreationResponse},
newspagefolderinsideResponse: ${newspagefolderinsideResponse},
newspagefolderResponse: ${newspagefolderResponse},
notificationpageResponse: ${notificationpageResponse},
renameResponse: ${renameResponse},
deleteResponse: ${deleteResponse},
addNewsResponse: ${addNewsResponse},
addCommentNotifyResponse: ${addCommentNotifyResponse},
deleteNotificationResponse: ${deleteNotificationResponse},
statusNotificationResponse: ${statusNotificationResponse},
deleteNewsResponse: ${deleteNewsResponse},
editNewsResponse: ${editNewsResponse},
statusNewsResponse: ${statusNewsResponse},
ohsFoldersResponse: ${ohsFoldersResponse},
ohsFoldersResponse2: ${ohsFoldersResponse2},
addFolderResponse: ${addFolderResponse},
ohsAddFileResponse: ${ohsAddFileResponse},
ohsEditFolderResponse: ${ohsEditFolderResponse},
ohsEditFileResponse: ${ohsEditFileResponse},
expiryFileOhsResponse: ${expiryFileOhsResponse}
    ''';
  }
}
