import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmTextFormField(
    {TextEditingController? controller,
    Function(String)? onChanged,
    bool? showDecoration,
    bool? readOnly = false,
    String? hintText,
    String? Function(String?)? validator,
    TextStyle? hintStyle,
    TextInputType? keyboardType,
    bool obscureText = false,
    Widget? suffix}) {
  return TextFormField(
    keyboardType: keyboardType,
    readOnly: readOnly!,
    controller: controller,
    style: TextStyle(fontSize: 10.sp),
    decoration: showDecoration == true
        ? InputDecoration(
            hintText: hintText,
            suffix: suffix,
            hintStyle: hintStyle,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600)))
        : InputDecoration(
            hintText: hintText,
            suffix: suffix,
            hintStyle:
                hintStyle ?? TextStyle(fontSize: 10.sp, color: Colors.grey),
            border: InputBorder.none,
          ),
    onChanged: (value) {
      onChanged;
    },
    validator: validator,
    obscureText: obscureText,
  );
}
