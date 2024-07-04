import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class MapWidget extends StatelessWidget {
  final double latitude;
  final double longitude;

  MapWidget({required this.latitude, required this.longitude});
  // Future<void> _launchMaps(double latitude, double longitude) async {
  //    String googleUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  //   final googleMapsUri = Uri(
  //     scheme: 'geo',
  //     path: '$latitude,$longitude',
  //   );

  //   final wazeUri = Uri(
  //     scheme: 'waze',
  //     host: 'ul',
  //     queryParameters: {'ll': '$latitude,$longitude', 'navigate': 'yes'},
  //   );

  //   try {
  //     if (await canLaunchUrl(googleMapsUri)) {
  //       await launchUrl(googleMapsUri);
  //     } else if (await canLaunchUrl(wazeUri)) {
  //       await launchUrl(wazeUri);
  //     } else {
  //       throw 'Could not launch any map app';
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> _launchMaps(double latitude, double longitude) async {
    final googleMapsUrl =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    final wazeUrl = 'waze://?ll=$latitude,$longitude&navigate=yes';

    try {
      // Attempt to launch Google Maps first
      if (await canLaunch(wazeUrl)) {
        await launch(wazeUrl);
      } else if (await canLaunch(googleMapsUrl)) {
        // If Google Maps cannot be launched, attempt to launch Waze
        await launch(googleMapsUrl);
      } else {
        throw 'Could not launch maps';
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // launchWazeMaps(latitude, longitude);
        _launchMaps(latitude, longitude);
      },
      child: SizedBox(
          height: 80.w,
          width: 80.w,
          child: const Image(
            image: AssetImage("assets/images/gmap.jpeg"),
          )),
    );
  }
}
