import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    this.loading = false,
    this.loadingColor, // Optional loading color
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
  final bool loading;
  final Color? loadingColor; // Optional loading color

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: loading,
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(color ?? Colors.blue),
            fixedSize: MaterialStateProperty.all<Size>(
              Size(width ?? double.maxFinite, height ?? 50.0),
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
              ),
            ),
          ),
          child: loading
              ? CupertinoActivityIndicator(
                  color: loadingColor ?? color ?? Colors.white,
                )
              : widget ??
                  Text(
                    text ?? "",
                    style:
                        buttonTextStyle ?? const TextStyle(color: Colors.white),
                  ),
        ),
      ),
    );
  }
}
