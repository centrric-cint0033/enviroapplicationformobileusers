import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KeyValueTextWidget extends StatelessWidget {
  final int? maxLines;
  final TextStyle? keyStyle;
  final String keyName, value;
  const KeyValueTextWidget({
    super.key,
    this.maxLines,
    this.keyStyle,
    required this.value,
    required this.keyName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            keyName,
            style: keyStyle ??
                Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(fontSize: 12.sp),
          ),
        ),
        Expanded(
          child: Text(
            value,
            maxLines: maxLines ?? 1,
            style: TextStyle(fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
