import 'package:enviro_mobile_application/utilis/Appthemes.dart';
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
    child: Text(
      text,
      style: const TextStyle(
        color: Appthemes.cPrimary,
      ),
    ),
  );
}
