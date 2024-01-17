import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';

class CmButton extends StatelessWidget {
  const CmButton({
    Key? key,
    this.alignment,
    this.buttonTextStyle,
    this.height,
    this.width,
    this.text,
    this.onPressed,
    this.widget,
    this.buttonStyle,
    this.color,
    this.borderRadius,
  }) : super(key: key);

  final ButtonStyle? buttonStyle;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle;
  final String? text;
  final Widget? widget;
  final Color? color;
  final double? height;
  final double? width;
  final double? borderRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(color ?? Colors.blue),
        fixedSize: MaterialStateProperty.all<Size>(
            Size(width ?? 341.0, height ?? 50.0)),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
          ),
        ),
      ),
      child: Center(
        child: widget ??
            Text(
              text ?? "",
              style: buttonTextStyle,
            ),
      ),
    );
  }
}
