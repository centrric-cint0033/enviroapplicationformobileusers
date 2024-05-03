import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/file_with_icon_and_name_widget.dart';

class QuoteFilesListWidgetInSales extends StatelessWidget {
  final List files;
  const QuoteFilesListWidgetInSales({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: files.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return FileWithIconAndNameWidget(fileName: "Data");
        },
      ),
    );
  }
}
