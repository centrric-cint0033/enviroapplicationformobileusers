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
      required BuildContext context,
      required num employeeID}) {
    return _$editTeamFolderApiAsyncAction.run(() => super.editTeamFolderApi(
        folder: folder, context: context, employeeID: employeeID));
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
editFolderResponse: ${editFolderResponse}
    ''';
  }
}
