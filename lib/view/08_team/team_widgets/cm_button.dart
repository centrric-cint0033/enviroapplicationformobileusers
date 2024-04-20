import 'package:enviro_mobile_application/widgets/widgets.dart';
import 'package:flutter/material.dart';

Widget customButton(Function onPressed, Color color, String text) {
  return TextButton(
      onPressed: () {
        onPressed();
      },
      style: ButtonStyle(
        side: MaterialStateProperty.all<BorderSide>(
          BorderSide(color: color),
        ),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
      ),
      child: showBlueText(text));
}
