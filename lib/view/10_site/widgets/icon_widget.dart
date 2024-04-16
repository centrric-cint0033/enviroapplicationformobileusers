import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconWidget extends StatelessWidget {
  final double? length;
  const IconWidget({super.key, this.length});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: length ?? 40.h,
      height: length ?? 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
      ),
      child: const Icon(
        size: 30,
        Icons.person,
        color: Colors.grey,
      ),
    );
  }
}
