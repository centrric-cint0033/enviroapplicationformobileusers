import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';

import '../utilis/constant.dart';

class FileWithIconAndNameWidget extends StatelessWidget {
  final String fileName;
  const FileWithIconAndNameWidget({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      width: 80.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(
          color: Theme.of(context).colorScheme.tertiary,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Align(
              child: Icon(
                Icons.file_copy_outlined,
                size: 25.h,
              ),
            ),
          ),
          Divider(color: Theme.of(context).colorScheme.tertiary),
          showBlackText(fileName, maxLines: 1, overflow: TextOverflow.ellipsis),
          sized0hx03,
        ],
      ),
    );
  }
}
