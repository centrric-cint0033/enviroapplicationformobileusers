import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
    this.icon,
    this.loading = false,
    this.loadingColor,
    this.fontSize,
    this.textcolor,
    this.iconSize,
  }) : super(key: key);

  final IconData? icon;
  final ButtonStyle? buttonStyle;
  final Alignment? alignment;
  final TextStyle? buttonTextStyle;
  final String? text;
  final Widget? widget;
  final Color? color;
  final double? height;
  final double? width;
  final double? fontSize;
  final double? iconSize;
  final double? borderRadius;
  final VoidCallback? onPressed;
  final bool loading;
  final Color? loadingColor;
  final Color? textcolor;

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
            backgroundColor: MaterialStateProperty.all<Color>(
              color ?? Appthemes.cPrimary,
            ),
            shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
              ),
            ),
          ),
          child: widget ??
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null)
                    Icon(icon,
                        size: iconSize ?? 18.w,
                        color: buttonTextStyle?.color ?? Colors.white),
                  if (icon != null) sized0wx05,
                  loading
                      ? CircularProgressIndicator( 
                          valueColor: AlwaysStoppedAnimation<Color>(
                            loadingColor ?? Colors.white,
                          ),
                        )
                      : Text(
                          text ?? "",
                          textAlign: TextAlign.center,
                          style: buttonTextStyle ??
                              TextStyle(
                                color: textcolor ?? Colors.white,
                                fontSize: fontSize ?? 9.w,
                              ),
                        ),
                ],
              ),
        ),
      ),
    );
  }
}
