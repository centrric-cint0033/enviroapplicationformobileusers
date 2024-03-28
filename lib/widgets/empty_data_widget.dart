import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utilis/constant.dart';

class EmptyDataWidget extends StatelessWidget {
  const EmptyDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 28.r,
            backgroundColor: Theme.of(context).colorScheme.primary,
            child: const Icon(
              Icons.error_outline,
              size: 33,
            ),
          ),
          sized0hx05,
          Text(
            "No Data Found",
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
