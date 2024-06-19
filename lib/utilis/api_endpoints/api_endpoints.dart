import 'package:enviro_mobile_application/utilis/api_endpoints/01_sales_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/02_vehicle_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/03_ohs_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/04_site_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/06_intranet_endpoints.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/07_team_endpoints.dart';

class ApiEndPoints
    with
        SalesEndpoint,
        VehicleEndpoint,
        TeamEndpoints,
        SiteEndpoint,
        OhsEndpoints,
        IntranetEndpoints {
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

  static const endpointnewsfolder = '/api/v1/oh_and_s/folder/segment/list';
  static const endpointnewsfldrrename = '/api/v1/drive/folder/rename/3260/';

  static const endpointPreviousSale = '/api/v1/jobs/previous/sale/';
  static const endpointnewsfldrdlte = '/api/v1/drive/folder/delete';
  static const endpointprofilelstng = '/api/v1/accounts/profile/view/';
  static const endpointprofileedit = '/api/v1/accounts/profile/view/';
  static const endpointjobcard = '/api/v1/jobs/card/info/view/2054865';
  static const endpointshedulecard = '/api/v1/schedule/view/mobile/waste/';
  static const endpointsheduleweekcard = '/api/v1/schedule/view/mobile/waste/';
  static const endpointshedulesignature =
      "/api/v1/schedule/jobschedule/signature/add/";
  static const endpointcommentsignature =
      "/api/v1/schedule/jobschedule/comments/";
  // SITE APIS
}
