mixin class TeamEndpoints {
  // TEAM APIS
  final String currentEmployeelist =
      '/api/v1/team/status/current/?limit=10&page=1';

  final String terminatedEmployeelist =
      '/api/v1/team/status/terminated/?limit=10&page=1';

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
}
