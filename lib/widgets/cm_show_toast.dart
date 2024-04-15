import 'package:flutter/material.dart';

void showToast(BuildContext context, {required String msg, Color? color}) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(msg),
    backgroundColor: color,
  ));
}
