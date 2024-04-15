 import 'package:flutter/material.dart';

Widget cmTextField(
      {TextEditingController? controller,
      Function(String)? onChanged,
      bool? showDecoration,
      String? hintText,
        TextStyle? hintStyle}) {
    return TextField(

      controller: controller,
      decoration: showDecoration == true
          ? InputDecoration(
        hintText: hintText,
              hintStyle: hintStyle,
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)))
          :  InputDecoration(
        hintText: hintText,
        hintStyle: hintStyle,
              border: InputBorder.none,
            ),
      onChanged: (value) {
        onChanged!(value);
      },
      
    );
  }