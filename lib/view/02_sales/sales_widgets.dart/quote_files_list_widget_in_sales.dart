import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/attached_file.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';

import '../../../utilis/constant.dart';
import '../../../widgets/cm_title.dart';
import '../../../widgets/file_with_icon_and_name_widget.dart';

class QuoteFilesListWidgetInSales extends StatelessWidget {
  const QuoteFilesListWidgetInSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<AttachedFile> files =
            vmSales.jobDetailResponse.data?.attachedFiles ?? [];
        return AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          firstChild: const SizedBox.shrink(),
          crossFadeState: files.isEmpty
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
          secondChild: files.isNotEmpty
              ? Column(
                  children: [
                    gapField,
                    cmTitle('Quote Attachments and Quote Files'),
                    sized0hx10,
                    SizedBox(
                      height: 80.h,
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: files.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FileWithIconAndNameWidget(
                            fileName: files[index].fileName ??
                                files[index].name ??
                                "",
                          );
                        },
                      ),
                    ),
                  ],
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}
