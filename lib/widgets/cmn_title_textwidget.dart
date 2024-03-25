import 'package:flutter/material.dart';

Row cmnTitleWidget(String? text) {
  return Row(
    children: [
      Text(
        text ?? 'Default Text',
        style: const TextStyle(
          color: Colors.black,
          fontSize: 19,
          fontWeight: FontWeight.w600,
        ),
      ),
      const Spacer(),
    ],
  );
}
