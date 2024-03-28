import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleDataColumnWidget extends StatelessWidget {
  final Widget child;
  final String title;
  const TitleDataColumnWidget({
    super.key,
    required this.child,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 10.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
          ),
          child,
        ],
      ),
    );
  }
}
