// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$VehicleViewModel on VehicleViewModelBase, Store {
  late final _$debouceAtom =
      Atom(name: 'VehicleViewModelBase.debouce', context: context);

  @override
  Timer? get debouce {
    _$debouceAtom.reportRead();
    return super.debouce;
  }

  @override
  set debouce(Timer? value) {
    _$debouceAtom.reportWrite(value, super.debouce, () {
      super.debouce = value;
    });
  }

  late final _$selectedVehicleAtom =
      Atom(name: 'VehicleViewModelBase.selectedVehicle', context: context);

  @override
  String? get selectedVehicle {
    _$selectedVehicleAtom.reportRead();
    return super.selectedVehicle;
  }

  @override
  set selectedVehicle(String? value) {
    _$selectedVehicleAtom.reportWrite(value, super.selectedVehicle, () {
      super.selectedVehicle = value;
    });
  }

  late final _$vehicleStatusTypeAtom =
      Atom(name: 'VehicleViewModelBase.vehicleStatusType', context: context);

  @override
  VehicleActionType? get vehicleStatusType {
    _$vehicleStatusTypeAtom.reportRead();
    return super.vehicleStatusType;
  }

  @override
  set vehicleStatusType(VehicleActionType? value) {
    _$vehicleStatusTypeAtom.reportWrite(value, super.vehicleStatusType, () {
      super.vehicleStatusType = value;
    });
  }

  late final _$vehicleTypeAtom =
      Atom(name: 'VehicleViewModelBase.vehicleType', context: context);

  @override
  VehicleType? get vehicleType {
    _$vehicleTypeAtom.reportRead();
    return super.vehicleType;
  }

  @override
  set vehicleType(VehicleType? value) {
    _$vehicleTypeAtom.reportWrite(value, super.vehicleType, () {
      super.vehicleType = value;
    });
  }

  late final _$searchTypeAtom =
      Atom(name: 'VehicleViewModelBase.searchType', context: context);

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
      Atom(name: 'VehicleViewModelBase.folderNames', context: context);

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
      Atom(name: 'VehicleViewModelBase.parentFolderId', context: context);

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
      Atom(name: 'VehicleViewModelBase.selectedFileName', context: context);

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
      Atom(name: 'VehicleViewModelBase.selectedFilePath', context: context);

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
      Atom(name: 'VehicleViewModelBase.loadinIndexFile', context: context);

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
      Atom(name: 'VehicleViewModelBase.loadinIndexFolder', context: context);

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
      Atom(name: 'VehicleViewModelBase.selectedExpiryDate', context: context);

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

  late final _$masterTruckApiResponseAtom = Atom(
      name: 'VehicleViewModelBase.masterTruckApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get masterTruckApiResponse {
    _$masterTruckApiResponseAtom.reportRead();
    return super.masterTruckApiResponse;
  }

  @override
  set masterTruckApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$masterTruckApiResponseAtom
        .reportWrite(value, super.masterTruckApiResponse, () {
      super.masterTruckApiResponse = value;
    });
  }

  late final _$masterCarApiResponseAtom =
      Atom(name: 'VehicleViewModelBase.masterCarApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get masterCarApiResponse {
    _$masterCarApiResponseAtom.reportRead();
    return super.masterCarApiResponse;
  }

  @override
  set masterCarApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$masterCarApiResponseAtom.reportWrite(value, super.masterCarApiResponse,
        () {
      super.masterCarApiResponse = value;
    });
  }

  late final _$semiTrailorApiResponseAtom = Atom(
      name: 'VehicleViewModelBase.semiTrailorApiResponse', context: context);

  @override
  ApiResponse<List<VehicleModel>> get semiTrailorApiResponse {
    _$semiTrailorApiResponseAtom.reportRead();
    return super.semiTrailorApiResponse;
  }

  @override
  set semiTrailorApiResponse(ApiResponse<List<VehicleModel>> value) {
    _$semiTrailorApiResponseAtom
        .reportWrite(value, super.semiTrailorApiResponse, () {
      super.semiTrailorApiResponse = value;
    });
  }

  late final _$vehicleFoldersResponseAtom = Atom(
      name: 'VehicleViewModelBase.vehicleFoldersResponse', context: context);

  @override
  ApiResponse<FolderListModel> get vehicleFoldersResponse {
    _$vehicleFoldersResponseAtom.reportRead();
    return super.vehicleFoldersResponse;
  }

  @override
  set vehicleFoldersResponse(ApiResponse<FolderListModel> value) {
    _$vehicleFoldersResponseAtom
        .reportWrite(value, super.vehicleFoldersResponse, () {
      super.vehicleFoldersResponse = value;
    });
  }

  late final _$vehicleFoldersResponse2Atom = Atom(
      name: 'VehicleViewModelBase.vehicleFoldersResponse2', context: context);

  @override
  ApiResponse<FolderListModel> get vehicleFoldersResponse2 {
    _$vehicleFoldersResponse2Atom.reportRead();
    return super.vehicleFoldersResponse2;
  }

  @override
  set vehicleFoldersResponse2(ApiResponse<FolderListModel> value) {
    _$vehicleFoldersResponse2Atom
        .reportWrite(value, super.vehicleFoldersResponse2, () {
      super.vehicleFoldersResponse2 = value;
    });
  }

  late final _$addFolderResponseAtom =
      Atom(name: 'VehicleViewModelBase.addFolderResponse', context: context);

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

  late final _$editVehicleFolderResponseAtom = Atom(
      name: 'VehicleViewModelBase.editVehicleFolderResponse', context: context);

  @override
  ApiResponse<String> get editVehicleFolderResponse {
    _$editVehicleFolderResponseAtom.reportRead();
    return super.editVehicleFolderResponse;
  }

  @override
  set editVehicleFolderResponse(ApiResponse<String> value) {
    _$editVehicleFolderResponseAtom
        .reportWrite(value, super.editVehicleFolderResponse, () {
      super.editVehicleFolderResponse = value;
    });
  }

  late final _$addVehicleFileResponseAtom = Atom(
      name: 'VehicleViewModelBase.addVehicleFileResponse', context: context);

  @override
  ApiResponse<String> get addVehicleFileResponse {
    _$addVehicleFileResponseAtom.reportRead();
    return super.addVehicleFileResponse;
  }

  @override
  set addVehicleFileResponse(ApiResponse<String> value) {
    _$addVehicleFileResponseAtom
        .reportWrite(value, super.addVehicleFileResponse, () {
      super.addVehicleFileResponse = value;
    });
  }

  late final _$editVehicleFileResponseAtom = Atom(
      name: 'VehicleViewModelBase.editVehicleFileResponse', context: context);

  @override
  ApiResponse<String> get editVehicleFileResponse {
    _$editVehicleFileResponseAtom.reportRead();
    return super.editVehicleFileResponse;
  }

  @override
  set editVehicleFileResponse(ApiResponse<String> value) {
    _$editVehicleFileResponseAtom
        .reportWrite(value, super.editVehicleFileResponse, () {
      super.editVehicleFileResponse = value;
    });
  }

  late final _$expiryFileResponseAtom =
      Atom(name: 'VehicleViewModelBase.expiryFileResponse', context: context);

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

  late final _$sstatusAtom =
      Atom(name: 'VehicleViewModelBase.sstatus', context: context);

  @override
  VehicleActionType? get sstatus {
    _$sstatusAtom.reportRead();
    return super.sstatus;
  }

  @override
  set sstatus(VehicleActionType? value) {
    _$sstatusAtom.reportWrite(value, super.sstatus, () {
      super.sstatus = value;
    });
  }

  late final _$selectedTruckresponseAtom = Atom(
      name: 'VehicleViewModelBase.selectedTruckresponse', context: context);

  @override
  String? get selectedTruckresponse {
    _$selectedTruckresponseAtom.reportRead();
    return super.selectedTruckresponse;
  }

  @override
  set selectedTruckresponse(String? value) {
    _$selectedTruckresponseAtom.reportWrite(value, super.selectedTruckresponse,
        () {
      super.selectedTruckresponse = value;
    });
  }

  late final _$masterTruckApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterTruckApi', context: context);

  @override
  Future<void> masterTruckApi({int? page}) {
    return _$masterTruckApiAsyncAction
        .run(() => super.masterTruckApi(page: page));
  }

  late final _$masterTruckSearchServiceApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.masterTruckSearchServiceApi',
      context: context);

  @override
  Future<void> masterTruckSearchServiceApi(String value, {int? page}) {
    return _$masterTruckSearchServiceApiAsyncAction
        .run(() => super.masterTruckSearchServiceApi(value, page: page));
  }

  late final _$masterCarApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterCarApi', context: context);

  @override
  Future<void> masterCarApi({int? page}) {
    return _$masterCarApiAsyncAction.run(() => super.masterCarApi(page: page));
  }

  late final _$masterCarSearchApiAsyncAction =
      AsyncAction('VehicleViewModelBase.masterCarSearchApi', context: context);

  @override
  Future<void> masterCarSearchApi(String value, {int? page}) {
    return _$masterCarSearchApiAsyncAction
        .run(() => super.masterCarSearchApi(value, page: page));
  }

  late final _$semiTrailorApiAsyncAction =
      AsyncAction('VehicleViewModelBase.semiTrailorApi', context: context);

  @override
  Future<void> semiTrailorApi({int? page}) {
    return _$semiTrailorApiAsyncAction
        .run(() => super.semiTrailorApi(page: page));
  }

  late final _$semiTrailorSearchApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.semiTrailorSearchApi',
      context: context);

  @override
  Future<void> semiTrailorSearchApi(String value, {int? page}) {
    return _$semiTrailorSearchApiAsyncAction
        .run(() => super.semiTrailorSearchApi(value, page: page));
  }

  late final _$getVehicleFoldersApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.getVehicleFoldersApi',
      context: context);

  @override
  Future<void> getVehicleFoldersApi(
      {required int vehicleId, required num parentFolderId}) {
    return _$getVehicleFoldersApiAsyncAction.run(() => super
        .getVehicleFoldersApi(
            vehicleId: vehicleId, parentFolderId: parentFolderId));
  }

  late final _$addVehicleFolderAsyncAction =
      AsyncAction('VehicleViewModelBase.addVehicleFolder', context: context);

  @override
  Future<void> addVehicleFolder(
      {required BuildContext context,
      required String name,
      required int vehicleId,
      required num parentfolder,
      required String vehicleType}) {
    return _$addVehicleFolderAsyncAction.run(() => super.addVehicleFolder(
        context: context,
        name: name,
        vehicleId: vehicleId,
        parentfolder: parentfolder,
        vehicleType: vehicleType));
  }

  late final _$editVehicleFolderApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.editVehicleFolderApi',
      context: context);

  @override
  Future<void> editVehicleFolderApi(
      {required BuildContext context,
      required int folderId,
      required int parentFolderId,
      required String name,
      required int vehicleId}) {
    return _$editVehicleFolderApiAsyncAction.run(() => super
        .editVehicleFolderApi(
            context: context,
            folderId: folderId,
            parentFolderId: parentFolderId,
            name: name,
            vehicleId: vehicleId));
  }

  late final _$deleteVehicleFolderApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.deleteVehicleFolderApi',
      context: context);

  @override
  Future<void> deleteVehicleFolderApi(
      {required BuildContext context,
      required int folderId,
      required int vehicleId,
      required num parentFolderId}) {
    return _$deleteVehicleFolderApiAsyncAction.run(() => super
        .deleteVehicleFolderApi(
            context: context,
            folderId: folderId,
            vehicleId: vehicleId,
            parentFolderId: parentFolderId));
  }

  late final _$addVehicleFileApiAsyncAction =
      AsyncAction('VehicleViewModelBase.addVehicleFileApi', context: context);

  @override
  Future<void> addVehicleFileApi(
      {required BuildContext context,
      required int vehicleId,
      required num parentfolder,
      String? files}) {
    return _$addVehicleFileApiAsyncAction.run(() => super.addVehicleFileApi(
        context: context,
        vehicleId: vehicleId,
        parentfolder: parentfolder,
        files: files));
  }

  late final _$editVehicleFilesApiAsyncAction =
      AsyncAction('VehicleViewModelBase.editVehicleFilesApi', context: context);

  @override
  Future<void> editVehicleFilesApi(
      {required BuildContext context,
      required int filesId,
      required int parentFolderId,
      required String name,
      required int vehicleId}) {
    return _$editVehicleFilesApiAsyncAction.run(() => super.editVehicleFilesApi(
        context: context,
        filesId: filesId,
        parentFolderId: parentFolderId,
        name: name,
        vehicleId: vehicleId));
  }

  late final _$deleteVehicleFilesApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.deleteVehicleFilesApi',
      context: context);

  @override
  Future<void> deleteVehicleFilesApi(
      {required BuildContext context,
      required int fileId,
      required int vehicleId,
      required num parentFolderId}) {
    return _$deleteVehicleFilesApiAsyncAction.run(() => super
        .deleteVehicleFilesApi(
            context: context,
            fileId: fileId,
            vehicleId: vehicleId,
            parentFolderId: parentFolderId));
  }

  late final _$exipryDateFileApiAsyncAction =
      AsyncAction('VehicleViewModelBase.exipryDateFileApi', context: context);

  @override
  Future<void> exipryDateFileApi(
      {required BuildContext context,
      required int fileId,
      required String expiry,
      required int vehicleId,
      required num parentFolderId}) {
    return _$exipryDateFileApiAsyncAction.run(() => super.exipryDateFileApi(
        context: context,
        fileId: fileId,
        expiry: expiry,
        vehicleId: vehicleId,
        parentFolderId: parentFolderId));
  }

  late final _$folderSearchVehicleApiAsyncAction = AsyncAction(
      'VehicleViewModelBase.folderSearchVehicleApi',
      context: context);

  @override
  Future<void> folderSearchVehicleApi(String searchData, int folderId,
      String searchType, int vehicleId, String vehicleType) {
    return _$folderSearchVehicleApiAsyncAction.run(() => super
        .folderSearchVehicleApi(
            searchData, folderId, searchType, vehicleId, vehicleType));
  }

  late final _$fileFolderSearchApiAsyncAction =
      AsyncAction('VehicleViewModelBase.fileFolderSearchApi', context: context);

  @override
  Future<void> fileFolderSearchApi(String searchData, int folderId,
      String searchType, int vehicleId, String vehicleType) {
    return _$fileFolderSearchApiAsyncAction.run(() => super.fileFolderSearchApi(
        searchData, folderId, searchType, vehicleId, vehicleType));
  }

  late final _$VehicleViewModelBaseActionController =
      ActionController(name: 'VehicleViewModelBase', context: context);

  @override
  void onTextChanged(dynamic Function() function) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.onTextChanged');
    try {
      return super.onTextChanged(function);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dropDownUpdate(VehicleActionType statusType, String statusString) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.dropDownUpdate');
    try {
      return super.dropDownUpdate(statusType, statusString);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic expiryDatePickerFn(BuildContext context, dynamic date, int fileId,
      num parentFolderId, int vehicleId) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.expiryDatePickerFn');
    try {
      return super
          .expiryDatePickerFn(context, date, fileId, parentFolderId, vehicleId);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedTruck(String? newValue) {
    final _$actionInfo = _$VehicleViewModelBaseActionController.startAction(
        name: 'VehicleViewModelBase.setSelectedTruck');
    try {
      return super.setSelectedTruck(newValue);
    } finally {
      _$VehicleViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
debouce: ${debouce},
selectedVehicle: ${selectedVehicle},
vehicleStatusType: ${vehicleStatusType},
vehicleType: ${vehicleType},
searchType: ${searchType},
folderNames: ${folderNames},
parentFolderId: ${parentFolderId},
selectedFileName: ${selectedFileName},
selectedFilePath: ${selectedFilePath},
loadinIndexFile: ${loadinIndexFile},
loadinIndexFolder: ${loadinIndexFolder},
selectedExpiryDate: ${selectedExpiryDate},
masterTruckApiResponse: ${masterTruckApiResponse},
masterCarApiResponse: ${masterCarApiResponse},
semiTrailorApiResponse: ${semiTrailorApiResponse},
vehicleFoldersResponse: ${vehicleFoldersResponse},
vehicleFoldersResponse2: ${vehicleFoldersResponse2},
addFolderResponse: ${addFolderResponse},
editVehicleFolderResponse: ${editVehicleFolderResponse},
addVehicleFileResponse: ${addVehicleFileResponse},
editVehicleFileResponse: ${editVehicleFileResponse},
expiryFileResponse: ${expiryFileResponse},
sstatus: ${sstatus},
selectedTruckresponse: ${selectedTruckresponse}
    ''';
  }
}
