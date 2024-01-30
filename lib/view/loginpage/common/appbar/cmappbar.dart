import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final Widget? leading;
  final double? height;
  final bool? centerTitle;
  final Widget? flexible;
  final Color? color;
  final bool? automaticallyImplyLeading;
  final Widget? suffixIcon;
  final List<Widget>? actions;
  final Widget? leadingImage;
  final bool showNotificationButton;

  const CustomAppBar({
    Key? key,
    this.leading,
    this.title,
    this.height,
    this.centerTitle,
    this.flexible,
    this.color,
    this.automaticallyImplyLeading,
    this.suffixIcon,
    this.actions,
    this.leadingImage,
    this.showNotificationButton = false, // Initialize with false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> updatedActions = actions ?? [];

    if (showNotificationButton) {
      updatedActions.add(
        IconButton(
          icon: Icon(Icons.notifications),
          onPressed: onNotificationPressed,
        ),
      );
    }

    return AppBar(
      title: title,
      centerTitle: centerTitle ?? true,
      backgroundColor: color ?? Colors.white,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      flexibleSpace: flexible ?? Container(),
      leading: leadingImage,
      actions: updatedActions,
    );
  }

  // Add your notification button press logic here
  void onNotificationPressed() {
    // Handle notification button press
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 45.h);
}
