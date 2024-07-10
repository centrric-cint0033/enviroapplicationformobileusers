// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TeamViewModel on TeamViewModelBase, Store {
  late final _$allEmployeeResponseAtom =
      Atom(name: 'TeamViewModelBase.allEmployeeResponse', context: context);

  @override
  ApiResponse<List<TeamResModel>> get allEmployeeResponse {
    _$allEmployeeResponseAtom.reportRead();
    return super.allEmployeeResponse;
  }

  @override
  set allEmployeeResponse(ApiResponse<List<TeamResModel>> value) {
    _$allEmployeeResponseAtom.reportWrite(value, super.allEmployeeResponse, () {
      super.allEmployeeResponse = value;
    });
  }

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
  ApiResponse<FolderListModel> get teamFoldersResponse {
    _$teamFoldersResponseAtom.reportRead();
    return super.teamFoldersResponse;
  }

  @override
  set teamFoldersResponse(ApiResponse<FolderListModel> value) {
    _$teamFoldersResponseAtom.reportWrite(value, super.teamFoldersResponse, () {
      super.teamFoldersResponse = value;
    });
  }

  late final _$teamFoldersResponse2Atom =
      Atom(name: 'TeamViewModelBase.teamFoldersResponse2', context: context);

  @override
  ApiResponse<FolderListModel> get teamFoldersResponse2 {
    _$teamFoldersResponse2Atom.reportRead();
    return super.teamFoldersResponse2;
  }

  @override
  set teamFoldersResponse2(ApiResponse<FolderListModel> value) {
    _$teamFoldersResponse2Atom.reportWrite(value, super.teamFoldersResponse2,
        () {
      super.teamFoldersResponse2 = value;
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

  late final _$createTeamResponseAtom =
      Atom(name: 'TeamViewModelBase.createTeamResponse', context: context);

  @override
  ApiResponse<dynamic> get createTeamResponse {
    _$createTeamResponseAtom.reportRead();
    return super.createTeamResponse;
  }

  @override
  set createTeamResponse(ApiResponse<dynamic> value) {
    _$createTeamResponseAtom.reportWrite(value, super.createTeamResponse, () {
      super.createTeamResponse = value;
    });
  }

  late final _$editTeamResponseAtom =
      Atom(name: 'TeamViewModelBase.editTeamResponse', context: context);

  @override
  ApiResponse<dynamic> get editTeamResponse {
    _$editTeamResponseAtom.reportRead();
    return super.editTeamResponse;
  }

  @override
  set editTeamResponse(ApiResponse<dynamic> value) {
    _$editTeamResponseAtom.reportWrite(value, super.editTeamResponse, () {
      super.editTeamResponse = value;
    });
  }

  late final _$addFileResponseAtom =
      Atom(name: 'TeamViewModelBase.addFileResponse', context: context);

  @override
  ApiResponse<dynamic> get addFileResponse {
    _$addFileResponseAtom.reportRead();
    return super.addFileResponse;
  }

  @override
  set addFileResponse(ApiResponse<dynamic> value) {
    _$addFileResponseAtom.reportWrite(value, super.addFileResponse, () {
      super.addFileResponse = value;
    });
  }

  late final _$editFileResponseAtom =
      Atom(name: 'TeamViewModelBase.editFileResponse', context: context);

  @override
  ApiResponse<String> get editFileResponse {
    _$editFileResponseAtom.reportRead();
    return super.editFileResponse;
  }

  @override
  set editFileResponse(ApiResponse<String> value) {
    _$editFileResponseAtom.reportWrite(value, super.editFileResponse, () {
      super.editFileResponse = value;
    });
  }

  late final _$deleteFileResponseAtom =
      Atom(name: 'TeamViewModelBase.deleteFileResponse', context: context);

  @override
  ApiResponse<String> get deleteFileResponse {
    _$deleteFileResponseAtom.reportRead();
    return super.deleteFileResponse;
  }

  @override
  set deleteFileResponse(ApiResponse<String> value) {
    _$deleteFileResponseAtom.reportWrite(value, super.deleteFileResponse, () {
      super.deleteFileResponse = value;
    });
  }

  late final _$expiryFileResponseAtom =
      Atom(name: 'TeamViewModelBase.expiryFileResponse', context: context);

  @override
  ApiResponse<dynamic> get expiryFileResponse {
    _$expiryFileResponseAtom.reportRead();
    return super.expiryFileResponse;
  }

  @override
  set expiryFileResponse(ApiResponse<dynamic> value) {
    _$expiryFileResponseAtom.reportWrite(value, super.expiryFileResponse, () {
      super.expiryFileResponse = value;
    });
  }

  late final _$fileFolderSearchResponseAtom = Atom(
      name: 'TeamViewModelBase.fileFolderSearchResponse', context: context);

  @override
  ApiResponse<TeamResModel> get fileFolderSearchResponse {
    _$fileFolderSearchResponseAtom.reportRead();
    return super.fileFolderSearchResponse;
  }

  @override
  set fileFolderSearchResponse(ApiResponse<TeamResModel> value) {
    _$fileFolderSearchResponseAtom
        .reportWrite(value, super.fileFolderSearchResponse, () {
      super.fileFolderSearchResponse = value;
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

  late final _$showRequredTextLicenseAtom =
      Atom(name: 'TeamViewModelBase.showRequredTextLicense', context: context);

  @override
  bool get showRequredTextLicense {
    _$showRequredTextLicenseAtom.reportRead();
    return super.showRequredTextLicense;
  }

  @override
  set showRequredTextLicense(bool value) {
    _$showRequredTextLicenseAtom
        .reportWrite(value, super.showRequredTextLicense, () {
      super.showRequredTextLicense = value;
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

  late final _$selectedExpiryDateAtom =
      Atom(name: 'TeamViewModelBase.selectedExpiryDate', context: context);

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

  late final _$selectedDesignationAddTeam2Atom = Atom(
      name: 'TeamViewModelBase.selectedDesignationAddTeam2', context: context);

  @override
  String? get selectedDesignationAddTeam2 {
    _$selectedDesignationAddTeam2Atom.reportRead();
    return super.selectedDesignationAddTeam2;
  }

  @override
  set selectedDesignationAddTeam2(String? value) {
    _$selectedDesignationAddTeam2Atom
        .reportWrite(value, super.selectedDesignationAddTeam2, () {
      super.selectedDesignationAddTeam2 = value;
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

  late final _$selectedFileNameLicenseAtom =
      Atom(name: 'TeamViewModelBase.selectedFileNameLicense', context: context);

  @override
  String? get selectedFileNameLicense {
    _$selectedFileNameLicenseAtom.reportRead();
    return super.selectedFileNameLicense;
  }

  @override
  set selectedFileNameLicense(String? value) {
    _$selectedFileNameLicenseAtom
        .reportWrite(value, super.selectedFileNameLicense, () {
      super.selectedFileNameLicense = value;
    });
  }

  late final _$selectedFilePathLicenseAtom =
      Atom(name: 'TeamViewModelBase.selectedFilePathLicense', context: context);

  @override
  String? get selectedFilePathLicense {
    _$selectedFilePathLicenseAtom.reportRead();
    return super.selectedFilePathLicense;
  }

  @override
  set selectedFilePathLicense(String? value) {
    _$selectedFilePathLicenseAtom
        .reportWrite(value, super.selectedFilePathLicense, () {
      super.selectedFilePathLicense = value;
    });
  }

  late final _$selectedFileNameAtom =
      Atom(name: 'TeamViewModelBase.selectedFileName', context: context);

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
      Atom(name: 'TeamViewModelBase.selectedFilePath', context: context);

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

  late final _$loadinIndexFolderAtom =
      Atom(name: 'TeamViewModelBase.loadinIndexFolder', context: context);

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

  late final _$loadinIndexFileAtom =
      Atom(name: 'TeamViewModelBase.loadinIndexFile', context: context);

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

  late final _$selectedMemberAtom =
      Atom(name: 'TeamViewModelBase.selectedMember', context: context);

  @override
  TeamResModel? get selectedMember {
    _$selectedMemberAtom.reportRead();
    return super.selectedMember;
  }

  @override
  set selectedMember(TeamResModel? value) {
    _$selectedMemberAtom.reportWrite(value, super.selectedMember, () {
      super.selectedMember = value;
    });
  }

  late final _$searchTypeAtom =
      Atom(name: 'TeamViewModelBase.searchType', context: context);

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
      Atom(name: 'TeamViewModelBase.folderNames', context: context);

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

  late final _$selectedCheckboxIndexAtom =
      Atom(name: 'TeamViewModelBase.selectedCheckboxIndex', context: context);

  @override
  int? get selectedCheckboxIndex {
    _$selectedCheckboxIndexAtom.reportRead();
    return super.selectedCheckboxIndex;
  }

  @override
  set selectedCheckboxIndex(int? value) {
    _$selectedCheckboxIndexAtom.reportWrite(value, super.selectedCheckboxIndex,
        () {
      super.selectedCheckboxIndex = value;
    });
  }

  late final _$selectedLeaveFromdateAtom =
      Atom(name: 'TeamViewModelBase.selectedLeaveFromdate', context: context);

  @override
  DateTime? get selectedLeaveFromdate {
    _$selectedLeaveFromdateAtom.reportRead();
    return super.selectedLeaveFromdate;
  }

  @override
  set selectedLeaveFromdate(DateTime? value) {
    _$selectedLeaveFromdateAtom.reportWrite(value, super.selectedLeaveFromdate,
        () {
      super.selectedLeaveFromdate = value;
    });
  }

  late final _$selectedLeaveTodateAtom =
      Atom(name: 'TeamViewModelBase.selectedLeaveTodate', context: context);

  @override
  DateTime? get selectedLeaveTodate {
    _$selectedLeaveTodateAtom.reportRead();
    return super.selectedLeaveTodate;
  }

  @override
  set selectedLeaveTodate(DateTime? value) {
    _$selectedLeaveTodateAtom.reportWrite(value, super.selectedLeaveTodate, () {
      super.selectedLeaveTodate = value;
    });
  }

  late final _$selectedLastDayofWorkAtom =
      Atom(name: 'TeamViewModelBase.selectedLastDayofWork', context: context);

  @override
  DateTime? get selectedLastDayofWork {
    _$selectedLastDayofWorkAtom.reportRead();
    return super.selectedLastDayofWork;
  }

  @override
  set selectedLastDayofWork(DateTime? value) {
    _$selectedLastDayofWorkAtom.reportWrite(value, super.selectedLastDayofWork,
        () {
      super.selectedLastDayofWork = value;
    });
  }

  late final _$selectedReturnToWorkDateAtom = Atom(
      name: 'TeamViewModelBase.selectedReturnToWorkDate', context: context);

  @override
  DateTime? get selectedReturnToWorkDate {
    _$selectedReturnToWorkDateAtom.reportRead();
    return super.selectedReturnToWorkDate;
  }

  @override
  set selectedReturnToWorkDate(DateTime? value) {
    _$selectedReturnToWorkDateAtom
        .reportWrite(value, super.selectedReturnToWorkDate, () {
      super.selectedReturnToWorkDate = value;
    });
  }

  late final _$leaveSubmitButtonEnableAtom =
      Atom(name: 'TeamViewModelBase.leaveSubmitButtonEnable', context: context);

  @override
  bool? get leaveSubmitButtonEnable {
    _$leaveSubmitButtonEnableAtom.reportRead();
    return super.leaveSubmitButtonEnable;
  }

  @override
  set leaveSubmitButtonEnable(bool? value) {
    _$leaveSubmitButtonEnableAtom
        .reportWrite(value, super.leaveSubmitButtonEnable, () {
      super.leaveSubmitButtonEnable = value;
    });
  }

  late final _$selectedChooseWeekTimesheetAtom = Atom(
      name: 'TeamViewModelBase.selectedChooseWeekTimesheet', context: context);

  @override
  DateTime? get selectedChooseWeekTimesheet {
    _$selectedChooseWeekTimesheetAtom.reportRead();
    return super.selectedChooseWeekTimesheet;
  }

  @override
  set selectedChooseWeekTimesheet(DateTime? value) {
    _$selectedChooseWeekTimesheetAtom
        .reportWrite(value, super.selectedChooseWeekTimesheet, () {
      super.selectedChooseWeekTimesheet = value;
    });
  }

  late final _$selectedStartTimeAtom =
      Atom(name: 'TeamViewModelBase.selectedStartTime', context: context);

  @override
  TimeOfDay? get selectedStartTime {
    _$selectedStartTimeAtom.reportRead();
    return super.selectedStartTime;
  }

  @override
  set selectedStartTime(TimeOfDay? value) {
    _$selectedStartTimeAtom.reportWrite(value, super.selectedStartTime, () {
      super.selectedStartTime = value;
    });
  }

  late final _$selectedEndTimeAtom =
      Atom(name: 'TeamViewModelBase.selectedEndTime', context: context);

  @override
  TimeOfDay? get selectedEndTime {
    _$selectedEndTimeAtom.reportRead();
    return super.selectedEndTime;
  }

  @override
  set selectedEndTime(TimeOfDay? value) {
    _$selectedEndTimeAtom.reportWrite(value, super.selectedEndTime, () {
      super.selectedEndTime = value;
    });
  }

  late final _$dayController1Atom =
      Atom(name: 'TeamViewModelBase.dayController1', context: context);

  @override
  TextEditingController get dayController1 {
    _$dayController1Atom.reportRead();
    return super.dayController1;
  }

  @override
  set dayController1(TextEditingController value) {
    _$dayController1Atom.reportWrite(value, super.dayController1, () {
      super.dayController1 = value;
    });
  }

  late final _$addLeaveResponseAtom =
      Atom(name: 'TeamViewModelBase.addLeaveResponse', context: context);

  @override
  ApiResponse<LeaveResModel> get addLeaveResponse {
    _$addLeaveResponseAtom.reportRead();
    return super.addLeaveResponse;
  }

  @override
  set addLeaveResponse(ApiResponse<LeaveResModel> value) {
    _$addLeaveResponseAtom.reportWrite(value, super.addLeaveResponse, () {
      super.addLeaveResponse = value;
    });
  }

  late final _$addFileLeaveAtom =
      Atom(name: 'TeamViewModelBase.addFileLeave', context: context);

  @override
  String? get addFileLeave {
    _$addFileLeaveAtom.reportRead();
    return super.addFileLeave;
  }

  @override
  set addFileLeave(String? value) {
    _$addFileLeaveAtom.reportWrite(value, super.addFileLeave, () {
      super.addFileLeave = value;
    });
  }

  late final _$timeSheetResponseAtom =
      Atom(name: 'TeamViewModelBase.timeSheetResponse', context: context);

  @override
  ApiResponse<TimeSheetResModel> get timeSheetResponse {
    _$timeSheetResponseAtom.reportRead();
    return super.timeSheetResponse;
  }

  @override
  set timeSheetResponse(ApiResponse<TimeSheetResModel> value) {
    _$timeSheetResponseAtom.reportWrite(value, super.timeSheetResponse, () {
      super.timeSheetResponse = value;
    });
  }

  late final _$editTimeSheetResponseAtom =
      Atom(name: 'TeamViewModelBase.editTimeSheetResponse', context: context);

  @override
  ApiResponse<TimeSheetResModel> get editTimeSheetResponse {
    _$editTimeSheetResponseAtom.reportRead();
    return super.editTimeSheetResponse;
  }

  @override
  set editTimeSheetResponse(ApiResponse<TimeSheetResModel> value) {
    _$editTimeSheetResponseAtom.reportWrite(value, super.editTimeSheetResponse,
        () {
      super.editTimeSheetResponse = value;
    });
  }

  late final _$getCurrentEmployeeAsyncAction =
      AsyncAction('TeamViewModelBase.getCurrentEmployee', context: context);

  @override
  Future<void> getCurrentEmployee({int? page}) {
    return _$getCurrentEmployeeAsyncAction
        .run(() => super.getCurrentEmployee(page: page));
  }

  late final _$getTerminatedEmployeeAsyncAction =
      AsyncAction('TeamViewModelBase.getTerminatedEmployee', context: context);

  @override
  Future<void> getTerminatedEmployee({int? page}) {
    return _$getTerminatedEmployeeAsyncAction
        .run(() => super.getTerminatedEmployee(page: page));
  }

  late final _$getTeamProfileEmployeeDetailsAsyncAction = AsyncAction(
      'TeamViewModelBase.getTeamProfileEmployeeDetails',
      context: context);

  @override
  Future<void> getTeamProfileEmployeeDetails({required num employeeID}) {
    return _$getTeamProfileEmployeeDetailsAsyncAction
        .run(() => super.getTeamProfileEmployeeDetails(employeeID: employeeID));
  }

  late final _$currentEmployeeSearchApiAsyncAction = AsyncAction(
      'TeamViewModelBase.currentEmployeeSearchApi',
      context: context);

  @override
  Future<void> currentEmployeeSearchApi(String searchData) {
    return _$currentEmployeeSearchApiAsyncAction
        .run(() => super.currentEmployeeSearchApi(searchData));
  }

  late final _$terminatedEmployeeSearchApiAsyncAction = AsyncAction(
      'TeamViewModelBase.terminatedEmployeeSearchApi',
      context: context);

  @override
  Future<void> terminatedEmployeeSearchApi(String searchData) {
    return _$terminatedEmployeeSearchApiAsyncAction
        .run(() => super.terminatedEmployeeSearchApi(searchData));
  }

  late final _$getTeamFoldersAsyncAction =
      AsyncAction('TeamViewModelBase.getTeamFolders', context: context);

  @override
  Future<void> getTeamFolders(
      {required num id,
      required num parentFolderId,
      bool fromTeamProfileScreen = false}) {
    return _$getTeamFoldersAsyncAction.run(() => super.getTeamFolders(
        id: id,
        parentFolderId: parentFolderId,
        fromTeamProfileScreen: fromTeamProfileScreen));
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
      {required int folderId,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) {
    return _$deleteTeamFolderApiAsyncAction.run(() => super.deleteTeamFolderApi(
        folderId: folderId,
        context: context,
        employeeID: employeeID,
        parentFolderId: parentFolderId));
  }

  late final _$editTeamFolderApiAsyncAction =
      AsyncAction('TeamViewModelBase.editTeamFolderApi', context: context);

  @override
  Future<void> editTeamFolderApi(
      {required int folderId,
      required int parentFolderId,
      required String name,
      required BuildContext context,
      required num employeeID}) {
    return _$editTeamFolderApiAsyncAction.run(() => super.editTeamFolderApi(
        folderId: folderId,
        parentFolderId: parentFolderId,
        name: name,
        context: context,
        employeeID: employeeID));
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

  late final _$createTeamApiAsyncAction =
      AsyncAction('TeamViewModelBase.createTeamApi', context: context);

  @override
  Future<void> createTeamApi(
      {required CreateTeamReqModel data, required BuildContext context}) {
    return _$createTeamApiAsyncAction
        .run(() => super.createTeamApi(data: data, context: context));
  }

  late final _$editTeamApiAsyncAction =
      AsyncAction('TeamViewModelBase.editTeamApi', context: context);

  @override
  Future<void> editTeamApi(
      {required CreateTeamReqModel data, required BuildContext context}) {
    return _$editTeamApiAsyncAction
        .run(() => super.editTeamApi(data: data, context: context));
  }

  late final _$addTeamFileAsyncAction =
      AsyncAction('TeamViewModelBase.addTeamFile', context: context);

  @override
  Future<void> addTeamFile(
      {required String name,
      required num employee,
      required num parentfolder,
      String? files,
      required BuildContext context}) {
    return _$addTeamFileAsyncAction.run(() => super.addTeamFile(
        name: name,
        employee: employee,
        parentfolder: parentfolder,
        files: files,
        context: context));
  }

  late final _$editTeamFilesApiAsyncAction =
      AsyncAction('TeamViewModelBase.editTeamFilesApi', context: context);

  @override
  Future<void> editTeamFilesApi(
      {required int filesId,
      required int parentFolderId,
      required String name,
      required BuildContext context,
      required num employeeID}) {
    return _$editTeamFilesApiAsyncAction.run(() => super.editTeamFilesApi(
        filesId: filesId,
        parentFolderId: parentFolderId,
        name: name,
        context: context,
        employeeID: employeeID));
  }

  late final _$deleteTeamFilesApiAsyncAction =
      AsyncAction('TeamViewModelBase.deleteTeamFilesApi', context: context);

  @override
  Future<void> deleteTeamFilesApi(
      {required int fileId,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) {
    return _$deleteTeamFilesApiAsyncAction.run(() => super.deleteTeamFilesApi(
        fileId: fileId,
        context: context,
        employeeID: employeeID,
        parentFolderId: parentFolderId));
  }

  late final _$exipryDateFileApiAsyncAction =
      AsyncAction('TeamViewModelBase.exipryDateFileApi', context: context);

  @override
  Future<void> exipryDateFileApi(
      {required int fileId,
      required String expiry,
      required BuildContext context,
      required num employeeID,
      required num parentFolderId}) {
    return _$exipryDateFileApiAsyncAction.run(() => super.exipryDateFileApi(
        fileId: fileId,
        expiry: expiry,
        context: context,
        employeeID: employeeID,
        parentFolderId: parentFolderId));
  }

  late final _$fileFolderSearchApiAsyncAction =
      AsyncAction('TeamViewModelBase.fileFolderSearchApi', context: context);

  @override
  Future<void> fileFolderSearchApi(
      String searchData, num folderId, String searchType, num employeeId) {
    return _$fileFolderSearchApiAsyncAction.run(() => super
        .fileFolderSearchApi(searchData, folderId, searchType, employeeId));
  }

  late final _$getAllEmployeeAsyncAction =
      AsyncAction('TeamViewModelBase.getAllEmployee', context: context);

  @override
  Future<void> getAllEmployee() {
    return _$getAllEmployeeAsyncAction.run(() => super.getAllEmployee());
  }

  late final _$folderSearchApiAsyncAction =
      AsyncAction('TeamViewModelBase.folderSearchApi', context: context);

  @override
  Future<void> folderSearchApi(
      String searchData, num folderId, String searchType, num employeeId) {
    return _$folderSearchApiAsyncAction.run(() =>
        super.folderSearchApi(searchData, folderId, searchType, employeeId));
  }

  late final _$addLeaveApiAsyncAction =
      AsyncAction('TeamViewModelBase.addLeaveApi', context: context);

  @override
  Future<void> addLeaveApi(
      {required LeaveResModel data, required BuildContext context}) {
    return _$addLeaveApiAsyncAction
        .run(() => super.addLeaveApi(data: data, context: context));
  }

  late final _$addFileLeavedFnAsyncAction =
      AsyncAction('TeamViewModelBase.addFileLeavedFn', context: context);

  @override
  Future<void> addFileLeavedFn() {
    return _$addFileLeavedFnAsyncAction.run(() => super.addFileLeavedFn());
  }

  late final _$getTimeSheetApiAsyncAction =
      AsyncAction('TeamViewModelBase.getTimeSheetApi', context: context);

  @override
  Future<void> getTimeSheetApi(
      {required String date, required BuildContext context}) {
    return _$getTimeSheetApiAsyncAction
        .run(() => super.getTimeSheetApi(date: date, context: context));
  }

  late final _$editTimeSheetApiAsyncAction =
      AsyncAction('TeamViewModelBase.editTimeSheetApi', context: context);

  @override
  Future<void> editTimeSheetApi(
      {required int id,
      required String date,
      required String day,
      required String start,
      required String finish,
      required String totalHoursWorked,
      required String normalHours,
      required String fullTime,
      required String halfTime,
      required String publicHolidays,
      required String annual,
      required String sick,
      required String otherDays,
      required BuildContext context}) {
    return _$editTimeSheetApiAsyncAction.run(() => super.editTimeSheetApi(
        id: id,
        date: date,
        day: day,
        start: start,
        finish: finish,
        totalHoursWorked: totalHoursWorked,
        normalHours: normalHours,
        fullTime: fullTime,
        halfTime: halfTime,
        publicHolidays: publicHolidays,
        annual: annual,
        sick: sick,
        otherDays: otherDays,
        context: context));
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
  dynamic expiryDatePickerFn(BuildContext context, dynamic date, int fileId,
      num employeeID, num parentFolderId) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.expiryDatePickerFn');
    try {
      return super.expiryDatePickerFn(
          context, date, fileId, employeeID, parentFolderId);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic employmentStatusonChanged(dynamic newValue) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.employmentStatusonChanged');
    try {
      return super.employmentStatusonChanged(newValue);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic employmentStatusonChangedEditPage(dynamic newValue) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.employmentStatusonChangedEditPage');
    try {
      return super.employmentStatusonChangedEditPage(newValue);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic cmFunction(dynamic value) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.cmFunction');
    try {
      return super.cmFunction(value);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectCheckbox(int? index) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.selectCheckbox');
    try {
      return super.selectCheckbox(index);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn8(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn8');
    try {
      return super.datePickerFn8(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn9(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn9');
    try {
      return super.datePickerFn9(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn10(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn10');
    try {
      return super.datePickerFn10(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn11(dynamic date) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn11');
    try {
      return super.datePickerFn11(date);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic datePickerFn12(dynamic date, BuildContext context) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.datePickerFn12');
    try {
      return super.datePickerFn12(date, context);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic timePickerFn1(dynamic time) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.timePickerFn1');
    try {
      return super.timePickerFn1(time);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic timePickerFn2(dynamic time) {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.timePickerFn2');
    try {
      return super.timePickerFn2(time);
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic totalDayFn() {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.totalDayFn');
    try {
      return super.totalDayFn();
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic totalHrsFn() {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.totalHrsFn');
    try {
      return super.totalHrsFn();
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void submitButtonValidation() {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.submitButtonValidation');
    try {
      return super.submitButtonValidation();
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clearLeaveDatas() {
    final _$actionInfo = _$TeamViewModelBaseActionController.startAction(
        name: 'TeamViewModelBase.clearLeaveDatas');
    try {
      return super.clearLeaveDatas();
    } finally {
      _$TeamViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allEmployeeResponse: ${allEmployeeResponse},
currentEmployeeResponse: ${currentEmployeeResponse},
terminatedEmployeeResponse: ${terminatedEmployeeResponse},
teamProfileEmployeeDetailListResponse: ${teamProfileEmployeeDetailListResponse},
teamFoldersResponse: ${teamFoldersResponse},
teamFoldersResponse2: ${teamFoldersResponse2},
addFolderResponse: ${addFolderResponse},
deleteFolderResponse: ${deleteFolderResponse},
editFolderResponse: ${editFolderResponse},
designationsResponse: ${designationsResponse},
deleteEmployeeResponse: ${deleteEmployeeResponse},
createTeamResponse: ${createTeamResponse},
editTeamResponse: ${editTeamResponse},
addFileResponse: ${addFileResponse},
editFileResponse: ${editFileResponse},
deleteFileResponse: ${deleteFileResponse},
expiryFileResponse: ${expiryFileResponse},
fileFolderSearchResponse: ${fileFolderSearchResponse},
profileImage: ${profileImage},
profileImageLoader: ${profileImageLoader},
showDecoration: ${showDecoration},
showRequredTextLicense: ${showRequredTextLicense},
selectedJoiningDate: ${selectedJoiningDate},
selectedTerminationDate: ${selectedTerminationDate},
selectedDob: ${selectedDob},
selectedDobAddTeam: ${selectedDobAddTeam},
selectedJoiningDateAddTeam: ${selectedJoiningDateAddTeam},
selectedLicenceExpiryDate: ${selectedLicenceExpiryDate},
selectedLicenceAlertDate: ${selectedLicenceAlertDate},
selectedExpiryDate: ${selectedExpiryDate},
employmentStatusList: ${employmentStatusList},
selectedDesignation: ${selectedDesignation},
selectedDesignationAddTeam: ${selectedDesignationAddTeam},
selectedDesignationAddTeam2: ${selectedDesignationAddTeam2},
selectedEmploymentStatus: ${selectedEmploymentStatus},
selectedAddEmploymentStatus: ${selectedAddEmploymentStatus},
showDate: ${showDate},
selectedFileNameLicense: ${selectedFileNameLicense},
selectedFilePathLicense: ${selectedFilePathLicense},
selectedFileName: ${selectedFileName},
selectedFilePath: ${selectedFilePath},
loadinIndexFolder: ${loadinIndexFolder},
loadinIndexFile: ${loadinIndexFile},
selectedMember: ${selectedMember},
searchType: ${searchType},
folderNames: ${folderNames},
selectedCheckboxIndex: ${selectedCheckboxIndex},
selectedLeaveFromdate: ${selectedLeaveFromdate},
selectedLeaveTodate: ${selectedLeaveTodate},
selectedLastDayofWork: ${selectedLastDayofWork},
selectedReturnToWorkDate: ${selectedReturnToWorkDate},
leaveSubmitButtonEnable: ${leaveSubmitButtonEnable},
selectedChooseWeekTimesheet: ${selectedChooseWeekTimesheet},
selectedStartTime: ${selectedStartTime},
selectedEndTime: ${selectedEndTime},
dayController1: ${dayController1},
addLeaveResponse: ${addLeaveResponse},
addFileLeave: ${addFileLeave},
timeSheetResponse: ${timeSheetResponse},
editTimeSheetResponse: ${editTimeSheetResponse}
    ''';
  }
}
