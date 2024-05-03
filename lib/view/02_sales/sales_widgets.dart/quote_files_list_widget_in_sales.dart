import 'package:enviro_mobile_application/model/02_sales/sales_model/attached_file.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/file_with_icon_and_name_widget.dart';

class QuoteFilesListWidgetInSales extends StatelessWidget {
  final List<AttachedFile> files;
  const QuoteFilesListWidgetInSales({super.key, required this.files});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: files.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return FileWithIconAndNameWidget(
            fileName: files[index].fileName ?? files[index].name ?? "",
          );
        },
      ),
    );
  }
}
