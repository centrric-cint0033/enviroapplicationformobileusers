import 'package:enviro_mobile_application/utilis/api_endpoints/01_sales_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/02_vehicle_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/04_site_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/07_team_endpoints.dart';

class ApiEndPoints
    with SalesEndpoint, VehicleEndpoint, TeamEndpoints, SiteEndpoint {
  static final ApiEndPoints _singleton = ApiEndPoints._internal();

  factory ApiEndPoints() {
    return _singleton;
  }

  ApiEndPoints._internal();

  // Authentication APIs

  // AUTH APIS

  static const endPointLogin = '/api/token/';

  //PERMISSIONS APIS

  static const endPointpermissions = '/api/v1/permissions/all/';

  //

  static const endpointohsnews = '/api/v1/oh_and_s/news/view/1/?limit=8';
  static const endpointnewsfolder = '/api/v1/oh_and_s/folder/segment/list';
  static const endpointfoldercreation = '/api/v1/drive/folder/create/';
  static const endpointnotificationlist =
      '/api/v1/oh_and_s/notification/view/1/?limit=8';
  static const endpointnewsfldrrename = '/api/v1/drive/folder/rename/3260/';

  static const endpointPreviousSale = '/api/v1/jobs/previous/sale/';
  static const endpointnewsfldrdlte = '/api/v1/drive/folder/delete';
  static const endpointintranetfldrlstng =
      '/api/v1/intranet_archive/folder/segment';
  static const endpointprofilelstng = '/api/v1/accounts/profile/view/';
  static const endpointprofileedit = '/api/v1/accounts/profile/view/';
  static const endpointjobcard = '/api/v1/jobs/card/info/view/2054865';

  // SITE APIS
}
