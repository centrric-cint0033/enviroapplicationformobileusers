import 'package:flutter/material.dart';

class CommonIconBtnWidget extends StatelessWidget {
  final Color? color;
  final IconData icon;
  final Function() onTap;
  const CommonIconBtnWidget({
    super.key,
    this.color,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(
        icon,
        size: 19,
        color: color ?? Colors.black54,
      ),
    );
  }
}
