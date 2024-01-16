import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final double? height;
  final bool? centerTitle;
  final Widget? flexible;
  final Color? color;

  const CustomAppBar({
    Key? key,
    this.title,
    this.height,
    this.centerTitle,
    this.flexible,
    this.color,
    required Column flexibleSpace,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle ?? true,
      backgroundColor: color ?? Colors.white,
      flexibleSpace: flexible ?? Container(),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 45.h);
}
