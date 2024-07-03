import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showConfirmationAlert({
  String? content,
  String? submitText,
  String? submitText2,
  required BuildContext context,
  required Function() onSubmit,
}) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
        title: Text(
          "Confirmation",
          style: TextStyle(fontSize: 12.w, fontWeight: FontWeight.bold),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(content ?? "Are you sure",
                style: TextStyle(color: Colors.black, fontSize: 10.w)),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    onSubmit();
                  },
                  child: Text(submitText ?? "Okay",
                      style: TextStyle(color: Colors.black, fontSize: 10.w)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    submitText2 ?? "Cancel",
                    style: TextStyle(color: Colors.black, fontSize: 10.w),
                  ),
                )
              ],
            )
          ],
        ),
      );
    },
  );
}
