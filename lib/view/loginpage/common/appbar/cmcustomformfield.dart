import 'package:flutter/material.dart';

class Cmformfield extends StatelessWidget {
  const Cmformfield({
    Key? key,
    this.color,
    this.width,
    this.height,
    this.alignment,
    this.controller,
    this.hinttext,
    this.textStyle,
    this.borderColor,
    this.keyboard,
    this.focusNode,
    this.validator,
    this.suffixIcon,
    this.decoration,
    this.obscureText,
    this.border,
    this.cursorColor,
    this.cursorHeight,
    this.keyboardType,
    this.prefixIcon,
  }) : super(key: key);

  final Color? color;
  final double? width;
  final double? height;
  final Alignment? alignment;
  final InputBorder? border;

  final TextEditingController? controller;
  final String? hinttext;
  final TextStyle? textStyle;
  final Color? borderColor;
  final TextInputType? keyboard;
  final FocusNode? focusNode;
  final FormFieldValidator<String>? validator;
  final Widget? suffixIcon;
  final Decoration? decoration;
  final bool? obscureText;
  final Color? cursorColor;
  final double? cursorHeight;
  final Widget? prefixIcon;
  final TextInputType? keyboardType; // Added keyboardType property

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(),
          border: border ??
              OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          hintText: hinttext,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
        style: textStyle,
        cursorHeight: cursorHeight ?? height,
        cursorWidth: 2.0,
        keyboardType: keyboardType,
        validator: validator,
        obscureText: obscureText ?? false,
      ),
    );
  }
}
