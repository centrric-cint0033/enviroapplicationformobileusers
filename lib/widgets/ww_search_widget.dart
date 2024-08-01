import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWTextField extends StatelessWidget {
  final Function(String)? onChanged;
  final TextEditingController controller;
  final Function()? suffixTap;
  final IconData? suffixIcon;
  final String? hintText;
  final bool description;
  final bool? enabled;
  final TextInputType keyboardType;
  final int? maxLines;
  const WWTextField(
      {super.key,
      this.onChanged,
      required this.controller,
      this.suffixTap,
      this.hintText,
      this.suffixIcon,
      this.description = false,
      this.keyboardType = TextInputType.text,
      this.maxLines,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: Colors.grey[500]!,
            )),
        child: TextField(
            enabled: enabled,
            onChanged: onChanged,
            controller: controller,
            keyboardType: keyboardType,
            expands: description,
            maxLines: maxLines,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: Colors.black, fontSize: 10.sp),
            decoration: InputDecoration(
              hintText: hintText ?? 'Search here',
              hintStyle: TextStyle(fontSize: 10.sp),
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(10),
              suffixIcon: suffixTap == null
                  ? null
                  : GestureDetector(
                      onTap: () => suffixTap!(),
                      child: Icon(
                        suffixIcon ?? Icons.search,
                        color: Colors.black,
                      )),
            )));
  }
}
