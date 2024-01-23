import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final double? height;
  final bool? centerTitle;
  final Widget? flexible;
  final Color? color;
  final bool? automaticallyImplyLeading;
  final Widget? suffixIcon;
  final List<Widget>? actions;
  final Widget? leadingImage;
  final bool showNotification;

  const CustomAppBar({
    Key? key,
    this.title,
    this.height,
    this.centerTitle,
    this.flexible,
    this.color,
    this.automaticallyImplyLeading,
    this.suffixIcon,
    this.actions,
    this.leadingImage,
    this.showNotification = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle ?? true,
      backgroundColor: color ?? Colors.white,
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      flexibleSpace: flexible ?? Container(),
      leading: leadingImage,
      actions: [
        if (showNotification) _buildNotificationButton(),
        if (suffixIcon != null) suffixIcon!,
        if (actions != null) ...actions!,
      ],
    );
  }

  Widget _buildNotificationButton() {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Stack(
        children: [
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '1', // You can use your notification count
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? 45.h);
}
