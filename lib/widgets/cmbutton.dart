import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CmButton extends StatelessWidget {
  const CmButton(
      {Key? key,
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
      this.loading = false})
      : super(key: key);

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
                MaterialStateProperty.all<Color>(color ?? Appthemes.cPrimary),
            // fixedSize: MaterialStateProperty.all<Size>(
            //   Size(width ?? double.maxFinite, height ?? 50.0),
            // ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
              ),
            ),
          ),
          child: loading
              ? const CupertinoActivityIndicator(color: Colors.white)
              : widget ??
                  Text(
                    text ?? "",
                    textAlign: TextAlign.center,
                    style: buttonTextStyle ??
                        TextStyle(color: Colors.white, fontSize: 12.sp),
                  ),
        ),
      ),
    );
  }
}
