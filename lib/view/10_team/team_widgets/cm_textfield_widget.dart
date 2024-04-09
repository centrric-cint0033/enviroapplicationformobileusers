 import 'package:flutter/material.dart';

Widget cmTextField(
      {TextEditingController? controller,
      Function(String)? onChanged,
      bool? showDecoration}) {
    return TextField(
      
      controller: controller,
      decoration: showDecoration == true
          ? InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600)))
          : const InputDecoration(
              border: InputBorder.none,
            ),
      onChanged: (value) {
        onChanged!(value);
      },
      
    );
  }