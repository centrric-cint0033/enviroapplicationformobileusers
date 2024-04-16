import 'package:flutter/material.dart';

Widget cmTextField(
    {TextEditingController? controller,
    Function(String)? onChanged,
    bool? showDecoration,
    bool? readOnly = false,
    String? hintText,
    TextStyle? hintStyle,TextInputType? keyboardType
}) {
  return TextField(
    keyboardType: keyboardType,
    readOnly: readOnly!,
    controller: controller,
    decoration: showDecoration == true
    
        ? InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,

            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600)))
        : InputDecoration(
            hintText: hintText,
            hintStyle: hintStyle,
            border: InputBorder.none,
          ),
    onChanged: (value) {
      onChanged;
    },
  );
}
