import 'package:flutter/material.dart';

void showToast(BuildContext context, {required String msg, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    duration: Duration(milliseconds: 250),
    content: Text(msg),
    backgroundColor: color,
  ));
}
