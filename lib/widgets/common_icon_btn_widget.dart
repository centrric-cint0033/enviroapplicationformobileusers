import 'package:flutter/material.dart';

class CommonIconBtnWidget extends StatelessWidget {
  final IconData icon;
  final Function() onTap;
  const CommonIconBtnWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Icon(icon, color: Colors.grey),
    );
  }
}
