// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TeamViewModel on TeamViewModelBase, Store {
  late final _$currentEmployeeResponseAtom =
      Atom(name: 'TeamViewModelBase.currentEmployeeResponse', context: context);

  @override
  ApiResponse<List<TeamResModel>> get currentEmployeeResponse {
    _$currentEmployeeResponseAtom.reportRead();
    return super.currentEmployeeResponse;
  }

  @override
  set currentEmployeeResponse(ApiResponse<List<TeamResModel>> value) {
    _$currentEmployeeResponseAtom
        .reportWrite(value, super.currentEmployeeResponse, () {
      super.currentEmployeeResponse = value;
    });
  }

  late final _$terminatedEmployeeResponseAtom = Atom(
      name: 'TeamViewModelBase.terminatedEmployeeResponse', context: context);

  @override
  ApiResponse<List<TeamResModel>> get terminatedEmployeeResponse {
    _$terminatedEmployeeResponseAtom.reportRead();
    return super.terminatedEmployeeResponse;
  }

  @override
  set terminatedEmployeeResponse(ApiResponse<List<TeamResModel>> value) {
    _$terminatedEmployeeResponseAtom
        .reportWrite(value, super.terminatedEmployeeResponse, () {
      super.terminatedEmployeeResponse = value;
    });
  }

  late final _$teamProfileEmployeeDetailListResponseAtom = Atom(
      name: 'TeamViewModelBase.teamProfileEmployeeDetailListResponse',
      context: context);

  @override
  ApiResponse<TeamProfileEmployeeDetailsResModel>
      get teamProfileEmployeeDetailListResponse {
    _$teamProfileEmployeeDetailListResponseAtom.reportRead();
    return super.teamProfileEmployeeDetailListResponse;
  }

  @override
  set teamProfileEmployeeDetailListResponse(
      ApiResponse<TeamProfileEmployeeDetailsResModel> value) {
    _$teamProfileEmployeeDetailListResponseAtom
        .reportWrite(value, super.teamProfileEmployeeDetailListResponse, () {
      super.teamProfileEmployeeDetailListResponse = value;
    });
  }

  late final _$teamFoldersResponseAtom =
      Atom(name: 'TeamViewModelBase.teamFoldersResponse', context: context);

  @override
  ApiResponse<TeamFolderRespModel> get teamFoldersResponse {
    _$teamFoldersResponseAtom.reportRead();
    return super.teamFoldersResponse;
  }

  @override
  set teamFoldersResponse(ApiResponse<TeamFolderRespModel> value) {
    _$teamFoldersResponseAtom.reportWrite(value, super.teamFoldersResponse, () {
      super.teamFoldersResponse = value;
    });
  }

  late final _$addFolderResponseAtom =
      Atom(name: 'TeamViewModelBase.addFolderResponse', context: context);

  @override
  ApiResponse<dynamic> get addFolderResponse {
    _$addFolderResponseAtom.reportRead();
    return super.addFolderResponse;
  }

  @override
  set addFolderResponse(ApiResponse<dynamic> value) {
    _$addFolderResponseAtom.reportWrite(value, super.addFolderResponse, () {
      super.addFolderResponse = value;
    });
  }

  late final _$deleteFolderResponseAtom =
      Atom(name: 'TeamViewModelBase.deleteFolderResponse', context: context);

  @override
  ApiResponse<String> get deleteFolderResponse {
    _$deleteFolderResponseAtom.reportRead();
    return super.deleteFolderResponse;
  }

  @override
  set deleteFolderResponse(ApiResponse<String> value) {
    _$deleteFolderResponseAtom.reportWrite(value, super.deleteFolderResponse,
        () {
      super.deleteFolderResponse = value;
    });
  }

  late final _$editFolderResponseAtom =
      Atom(name: 'TeamViewModelBase.editFolderResponse', context: context);

  @override
  ApiResponse<String> get editFolderResponse {
    _$editFolderResponseAtom.reportRead();
    return super.editFolderResponse;
  }

  @override
  set editFolderResponse(ApiResponse<String> value) {
    _$editFolderResponseAtom.reportWrite(value, super.editFolderResponse, () {
      super.editFolderResponse = value;
    });
  }

  late final _$designationsResponseAtom =
      Atom(name: 'TeamViewModelBase.designationsResponse', context: context);

  @override
  ApiResponse<TeamDesigntionResModel> get designationsResponse {
    _$designationsResponseAtom.reportRead();
    return super.designationsResponse;
  }

  @override
  set designationsResponse(ApiResponse<TeamDesigntionResModel> value) {
    _$designationsResponseAtom.reportWrite(value, super.designationsResponse,
        () {
      super.designationsResponse = value;
    });
  }

  late final _$deleteEmployeeResponseAtom =
      Atom(name: 'TeamViewModelBase.deleteEmployeeResponse', context: context);

  @override
  ApiResponse<String> get deleteEmployeeResponse {
    _$deleteEmployeeResponseAtom.reportRead();
    return super.deleteEmployeeResponse;
  }

  @override
  set deleteEmployeeResponse(ApiResponse<String> value) {
    _$deleteEmployeeResponseAtom
        .reportWrite(value, super.deleteEmployeeResponse, () {
      super.deleteEmployeeResponse = value;
    });
  }

  late final _$profileImageAtom =
      Atom(name: 'TeamViewModelBase.profileImage', context: context);

  @override
  ImageFilePickerModel? get profileImage {
    _$profileImageAtom.reportRead();
    return super.profileImage;
  }

  @override
  set profileImage(ImageFilePickerModel? value) {
    _$profileImageAtom.reportWrite(value, super.profileImage, () {
      super.profileImage = value;
    });
  }

  late final _$profileImageLoaderAtom =
      Atom(name: 'TeamViewModelBase.profileImageLoader', context: context);

  @override
  bool get profileImageLoader {
    _$profileImageLoaderAtom.reportRead();
    return super.profileImageLoader;
  }

  @override
  set profileImageLoader(bool value) {
    _$profileImageLoaderAtom.reportWrite(value, super.profileImageLoader, () {
      super.profileImageLoader = value;
    });
  }

  late final _$showDecorationAtom =
      Atom(name: 'TeamViewModelBase.showDecoration', context: context);

  @override
  bool get showDecoration {
    _$showDecorationAtom.reportRead();
    return super.showDecoration;
  }

  @override
  set showDecoration(bool value) {
    _$showDecorationAtom.reportWrite(value, super.showDecoration, () {
      super.showDecoration = value;
    });
  }

  late final _$selectedJoiningDateAtom =
      Atom(name: 'TeamViewModelBase.selectedJoiningDate', context: context);

  @override
  DateTime? get selectedJoiningDate {
    _$selectedJoiningDateAtom.reportRead();
    return super.selectedJoiningDate;
  }

  @override
  set selectedJoiningDate(DateTime? value) {
    _$selectedJoiningDateAtom.reportWrite(value, super.selectedJoiningDate, () {
      super.selectedJoiningDate = value;
    });
  }

  late final _$selectedTerminationDateAtom =
      Atom(name: 'TeamViewModelBase.selectedTerminationDate', context: context);

  @override
  DateTime? get selectedTerminationDate {
    _$selectedTerminationDateAtom.reportRead();
    return super.selectedTerminationDate;
  }

  @override
  set selectedTerminationDate(DateTime? value) {
    _$selectedTerminationDateAtom
        .reportWrite(value, super.selectedTerminationDate, () {
      super.selectedTerminationDate = value;
    });
  }

  late final _$selectedDobAtom =
      Atom(name: 'TeamViewModelBase.selectedDob', context: context);

  @override
  DateTime? get selectedDob {
    _$selectedDobAtom.reportRead();
    return super.selectedDob;
  }

  @override
  set selectedDob(DateTime? value) {
    _$selectedDobAtom.reportWrite(value, super.selectedDob, () {
      super.selectedDob = value;
    });
  }

  late final _$selectedDobAddTeamAtom =
      Atom(name: 'TeamViewModelBase.selectedDobAddTeam', context: context);

  @override
  DateTime? get selectedDobAddTeam {
    _$selectedDobAddTeamAtom.reportRead();
    return super.selectedDobAddTeam;
  }

  @override
  set selectedDobAddTeam(DateTime? value) {
    _$selectedDobAddTeamAtom.reportWrite(value, super.selectedDobAddTeam, () {
      super.selectedDobAddTeam = value;
    });
  }

  late final _$selectedJoiningDateAddTeamAtom = Atom(
      name: 'TeamViewModelBase.selectedJoiningDateAddTeam', context: context);

  @override
  DateTime? get selectedJoiningDateAddTeam {
    _$selectedJoiningDateAddTeamAtom.reportRead();
    return super.selectedJoiningDateAddTeam;
  }

  @override
  set selectedJoiningDateAddTeam(DateTime? value) {
    _$selectedJoiningDateAddTeamAtom
        .reportWrite(value, super.selectedJoiningDateAddTeam, () {
      super.selectedJoiningDateAddTeam = value;
    });
  }

  late final _$selectedLicenceExpiryDateAtom = Atom(
      name: 'TeamViewModelBase.selectedLicenceExpiryDate', context: context);

  @override
  DateTime? get selectedLicenceExpiryDate {
    _$selectedLicenceExpiryDateAtom.reportRead();
    return super.selectedLicenceExpiryDate;
  }

  @override
  set selectedLicenceExpiryDate(DateTime? value) {
    _$selectedLicenceExpiryDateAtom
        .reportWrite(value, super.selectedLicenceExpiryDate, () {
      super.selectedLicenceExpiryDate = value;
    });
  }

  late final _$selectedLicenceAlertDateAtom = Atom(
      name: 'TeamViewModelBase.selectedLicenceAlertDate', context: context);

  @override
  DateTime? get selectedLicenceAlertDate {
    _$selectedLicenceAlertDateAtom.reportRead();
    return super.selectedLicenceAlertDate;
  }

  @override
  set selectedLicenceAlertDate(DateTime? value) {
    _$selectedLicenceAlertDateAtom
        .reportWrite(value, super.selectedLicenceAlertDate, () {
      super.selectedLicenceAlertDate = value;
    });
  }

  late final _$employmentStatusListAtom =
      Atom(name: 'TeamViewModelBase.employmentStatusList', context: context);

  @override
  List<String> get employmentStatusList {
    _$employmentStatusListAtom.reportRead();
    return super.employmentStatusList;
  }

  @override
  set employmentStatusList(List<String> value) {
    _$employmentStatusListAtom.reportWrite(value, super.employmentStatusList,
        () {
      super.employmentStatusList = value;
    });
  }

  late final _$selectedDesignationAtom =
      Atom(name: 'TeamViewModelBase.selectedDesignation', context: context);

  @override
  Designation? get selectedDesignation {
    _$selectedDesignationAtom.reportRead();
    return super.selectedDesignation;
  }

  @override
  set selectedDesignation(Designation? value) {
    _$selectedDesignationAtom.reportWrite(value, super.selectedDesignation, () {
      super.selectedDesignation = value;
    });
  }

  late final _$selectedDesignationAddTeamAtom = Atom(
      name: 'TeamViewModelBase.selectedDesignationAddTeam', context: context);

  @override
  Designation? get selectedDesignationAddTeam {
    _$selectedDesignationAddTeamAtom.reportRead();
    return super.selectedDesignationAddTeam;
  }

  @override
  set selectedDesignationAddTeam(Designation? value) {
    _$selectedDesignationAddTeamAtom
        .reportWrite(value, super.selectedDesignationAddTeam, () {
      super.selectedDesignationAddTeam = value;
    });
  }

  late final _$selectedEmploymentStatusAtom = Atom(
      name: 'TeamViewModelBase.selectedEmploymentStatus', context: context);

  @override
  String get selectedEmploymentStatus {
    _$selectedEmploymentStatusAtom.reportRead();
    return super.selectedEmploymentStatus;
  }

  @override
  set selectedEmploymentStatus(String value) {
    _$selectedEmploymentStatusAtom
        .reportWrite(value, super.selectedEmploymentStatus, () {
      super.selectedEmploymentStatus = value;
    });
  }

  late final _$selectedAddEmploymentStatusAtom = Atom(
      name: 'TeamViewModelBase.selectedAddEmploymentStatus', context: context);

  @override
  String get selectedAddEmploymentStatus {
    _$selectedAddEmploymentStatusAtom.reportRead();
    return super.selectedAddEmploymentStatus;
  }

  @override
  set selectedAddEmploymentStatus(String value) {
    _$selectedAddEmploymentStatusAtom
        .reportWrite(value, super.selectedAddEmploymentStatus, () {
      super.selectedAddEmploymentStatus = value;
    });
  }

  late final _$showDateAtom =
      Atom(name: 'TeamViewModelBase.showDate', context: context);

  @override
  bool get showDate {
    _$showDateAtom.reportRead();
    return super.showDate;
  }

  @override
  set showDate(bool value) {
    _$showDateAtom.reportWrite(value, super.showDate, () {
      super.showDate = value;
    });
  }

  late final _$getCurrentEmployeeAsyncAction =
      AsyncAction('TeamViewModelBase.getCurrentEmployee', context: context);

  @override
  Future<void> getCurrentEmployee() {
    return _$getCurrentEmployeeAsyncAction
        .run(() => super.getCurrentEmployee());
  }

  late final _$getTerminatedEmployeeAsyncAction =
      AsyncAction('TeamViewModelBase.getTerminatedEmployee', context: context);

  @override
  Future<void> getTerminatedEmployee() {
    return _$getTerminatedEmployeeAsyncAction
        .run(() => super.getTerminatedEmployee());
  }

  late final _$getTeamProfileEmployeeDetailsAsyncAction = AsyncAction(
      'TeamViewModelBase.getTeamProfileEmployeeDetails',
      context: context);

  @override
  Future<void> getTeamProfileEmployeeDetails({required num employeeID}) {
    return _$getTeamProfileEmployeeDetailsAsyncAction
        .run(() => super.getTeamProfileEmployeeDetails(employeeID: employeeID));
  }

  late final _$getTeamFoldersAsyncAction =
      AsyncAction('TeamViewModelBase.getTeamFolders', context: context);

  @override
  Future<void> getTeamFolders({required num id}) {
    return _$getTeamFoldersAsyncAction.run(() => super.getTeamFolders(id: id));
  }

  late final _$addTeamFolderAsyncAction =
      AsyncAction('TeamViewModelBase.addTeamFolder', context: context);

  @override
  Future<void> addTeamFolder(
      {required String name,
      required num employee,
      required num parentfolder,
      required BuildContext context}) {
    return _$addTeamFolderAsyncAction.run(() => super.addTeamFolder(
        name: name,
        employee: employee,
        parentfolder: parentfolder,
        context: context));
  }

  late final _$deleteTeamFolderApiAsyncAction =
      AsyncAction('TeamViewModelBase.deleteTeamFolderApi', context: context);

  @override
  Future<void> deleteTeamFolderApi(
      {required Folder folder,
      required BuildContext context,
      required num employeeID}) {
    return _$deleteTeamFolderApiAsyncAction.run(() => super.deleteTeamFolderApi(
        folder: folder, context: context, employeeID: employeeID));
  }

  late final _$editTeamFolderApiAsyncAction =
      AsyncAction('TeamViewModelBase.editTeamFolderApi', context: context);

  @override
  Future<void> editTeamFolderApi(
      {required Folder folder,
      required String name,
      required BuildContext context,
      required num employeeID}) {
    return _$editTeamFolderApiAsyncAction.run(() => super.editTeamFolderApi(
        folder: folder, name: name, context: context, employeeID: employeeID));
  }

  late final _$deleteEmployeeApiAsyncAction =
      AsyncAction('TeamViewModelBase.deleteEmployeeApi', context: context);

  @override
  Future<void> deleteEmployeeApi(
      {required BuildContext context, required num employeeID}) {
    return _$deleteEmployeeApiAsyncAction.run(() =>
        super.deleteEmployeeApi(context: context, employeeID: employeeID));
  }

  late final _$dpImageUpdateAsyncAction =
      AsyncAction('TeamViewModelBase.dpImageUpdate', context: context);

  @override
  Future<void> dpImageUpdate() {
    return _$dpImageUpdateAsyncAction.run(() => super.dpImageUpdate());
  }

  late final _$getTeamDesignationsApiAsyncAction =
      AsyncAction('TeamViewModelBase.getTeamDesignationsApi', context: context);

  @override
  Future<void> getTeamDesignationsApi() {
    return _$getTeamDesignationsApiAsyncAction
        .run(() => super.getTeamDesignationsApi());
  }

  late final _$TeamViewModelBaseActionController =
      ActionController(name: 'TeamViewModelBase', context: context);

  @override
  dynamic datePickerFn1(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn1');
    try {
      return super.datePickerFn1(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn2(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn2');
    try {
      return super.datePickerFn2(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn3(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn3');
    try {
      return super.datePickerFn3(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn4(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn4');
    try {
      return super.datePickerFn4(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn5(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn5');
    try {
      return super.datePickerFn5(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn6(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn6');
    try {
      return super.datePickerFn6(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn7(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn7');
    try {
      return super.datePickerFn7(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentEmployeeResponse: ${currentEmployeeResponse},
terminatedEmployeeResponse: ${terminatedEmployeeResponse},
teamProfileEmployeeDetailListResponse: ${teamProfileEmployeeDetailListResponse},
teamFoldersResponse: ${teamFoldersResponse},
addFolderResponse: ${addFolderResponse},
deleteFolderResponse: ${deleteFolderResponse},
editFolderResponse: ${editFolderResponse},
designationsResponse: ${designationsResponse},
deleteEmployeeResponse: ${deleteEmployeeResponse},
profileImage: ${profileImage},
profileImageLoader: ${profileImageLoader},
showDecoration: ${showDecoration},
selectedJoiningDate: ${selectedJoiningDate},
selectedTerminationDate: ${selectedTerminationDate},
selectedDob: ${selectedDob},
selectedDobAddTeam: ${selectedDobAddTeam},
selectedJoiningDateAddTeam: ${selectedJoiningDateAddTeam},
selectedLicenceExpiryDate: ${selectedLicenceExpiryDate},
selectedLicenceAlertDate: ${selectedLicenceAlertDate},
employmentStatusList: ${employmentStatusList},
selectedDesignation: ${selectedDesignation},
selectedDesignationAddTeam: ${selectedDesignationAddTeam},
selectedEmploymentStatus: ${selectedEmploymentStatus},
selectedAddEmploymentStatus: ${selectedAddEmploymentStatus},
showDate: ${showDate}
    ''';
  }
}
