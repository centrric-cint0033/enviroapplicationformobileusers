import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/utilis/imagepath.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

popupErrorData(BuildContext context,
    {String? content,
    // required Function() onTap,
    required Map<MainFailure, dynamic>? mainFailure}) {
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: wwErrorData(
                onTap: () => Navigator.pop(context),
                mainFailure: mainFailure,
                isFromPopUp: true,
                context: context));
      });
}

Widget wwErrorData(
    {String? content,
    bool? isFromPopUp,
    BuildContext? context,
    required Function() onTap,
    required Map<MainFailure, dynamic>? mainFailure}) {
  var failure = mainFailure?.keys.toList()[0];

  // customPrint(content: mainFailure?.values.toList()[0]);

  String? failureMessage = mainFailure?.values.toList()[0];

  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SvgPicture.asset(ImageConstant.svgError),
      sized0hx10,
      Text(
          content ??
              failureMessage ??
              (failure == const MainFailure.timeout()
                  ? 'The operation has timed out. Please check your internet connection and try again.'
                  : failure == const MainFailure.networkFailure()
                      ? '''We're sorry, but it seems there's a problem with your network connection. Please check your internet connection and try again.'''
                      : failure == const MainFailure.serverFailure()
                          ? '''We're sorry, but it seems there's a problem with our server. Please try again later or contact support if the issue persists.'''
                          : 'Oops! Something went wrong. Please try again later.'),
          // textSize:
          //     isFromPopUp == true ? TextSize.fw600px14 : TextSize.fw600px22,
          textAlign: TextAlign.center),
      sized0hx20,
      CmButton(
        text: isFromPopUp == true ? 'Dismiss ' : 'Try Again',
        onPressed: onTap,
        // onTap: onTap,
      )
    ],
  );
}
