// Checking the expiration time

import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';

bool jwtTokenChecker(Map<String, dynamic>? token) {
  if (token != null && token.containsKey('exp')) {
    int expiryTimeInSeconds = token['exp'];
    DateTime expiryDateTime =
        DateTime.fromMillisecondsSinceEpoch(expiryTimeInSeconds * 1000);

    DateTime currentDateTime = DateTime.now();

    if (currentDateTime.isBefore(expiryDateTime)) {
      customPrint(
          content: 'Token is not expired. Expiry time: $expiryDateTime');
      return true;
    } else {
      customPrint(content: 'Token has expired.');
      return false;
    }
  } else {
    customPrint(content: 'Invalid JWT token or missing expiration time.');
    return false;
  }
}
