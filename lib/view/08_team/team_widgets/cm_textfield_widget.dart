import 'package:flutter/material.dart';

Widget cmTextFormField(
    {TextEditingController? controller,
    Function(String)? onChanged,
    bool? showDecoration,
    bool? readOnly = false,
    String? hintText,
    String? Function(String?)? validator,
    TextStyle? hintStyle,
    TextInputType? keyboardType}) {
  return TextFormField(
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
    validator: validator,
  );
}
