mixin class TeamEndpoints {
  // TEAM APIS
  final String currentEmployeelist = '/api/v1/team/status/current/';

  final String terminatedEmployeelist = '/api/v1/team/status/terminated/';

  final String allEmployeelist = '/api/v1/team/employee/all/';

  final String searchEmployeeList = '/api/v1/team/searchEmployee/';

  final String teamprofileEmployeeDetailList = '/api/v1/team/employee';

  final String teamFolder = '/api/v1/drive/team/folder';

  final String addTeamFolder = '/api/v1/drive/create/team/folder/';

  final String teamFolderDelete = '/api/v1/drive/folder/delete';

  final String teamFolderEdit = '/api/v1/drive/folder/rename';

  final String teamDesignations = '/api/v1/team/designations/';

  final String deleteEmployee = '/api/v1/team/employee/delete';

  final String createEmployee = '/api/v1/team/create/';

  final String editEmployee = '/api/v1/team/employee/edit';

  final String addTeamFiles = '/api/v1/drive/team/add/files/';

  final String teamFilesEdit = '/api/v1/drive/file/rename/';

  final String teamFilesDelete = '/api/v1/drive/file/delete/';

  final String teamFilesExpiry = '/api/v1/drive/file/expiry-date/';

  final String searchFileFolder = '/api/v1/drive/search/file/';

  final String searchFolder = '/api/v1/drive/search/folder/';
}
