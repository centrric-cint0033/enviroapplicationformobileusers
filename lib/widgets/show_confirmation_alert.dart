import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showConfirmationAlert(
    {String? content,
    String? submitText,
    String? submitText2,
    String? submitText3,
    required BuildContext context,
    required Function() onSubmit,
    Function()? onSubmit2,
    Function()? onSubmit3,
    bool showSubmit3Bn = false}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        title: Text(
          "Confirmation",
          style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 12.sp,
              fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(content ?? "Are you sure",
                  style:
                      TextStyle(color: Colors.grey.shade700, fontSize: 10.sp)),
            ),
            sized0hx15,
            if (showSubmit3Bn == true) ...[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onSubmit();
                },
                child: Text(submitText ?? "Okay",
                    style: TextStyle(
                        color: Colors.grey.shade700, fontSize: 10.sp)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onSubmit2!();
                },
                child: Text(
                  submitText2 ?? "Cancel",
                  style:
                      TextStyle(color: Colors.grey.shade700, fontSize: 10.sp),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  onSubmit3!();
                },
                child: Text(submitText3 ?? "",
                    style: TextStyle(
                        color: Colors.grey.shade700, fontSize: 10.sp)),
              ),
            ] else ...[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onSubmit();
                    },
                    child: Text(submitText ?? "Okay",
                        style: TextStyle(
                            color: Colors.grey.shade700, fontSize: 10.sp)),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      onSubmit2!();
                    },
                    child: Text(
                      submitText2 ?? "Cancel",
                      style: TextStyle(
                          color: Colors.grey.shade700, fontSize: 10.sp),
                    ),
                  ),
                ],
              ),
            ],
          ],
        ),
      );
    },
  );
}
