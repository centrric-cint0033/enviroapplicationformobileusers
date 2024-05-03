import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
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
        SalesModel? data = vmSales.jobDetailResponse.data;
        List<AttachedFile> files = data?.attachedFiles ?? [];
        String? quoteDocument = data?.quoteFile;
        final bool showData = files.isNotEmpty || quoteDocument != null;

        return AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          firstChild: const SizedBox.shrink(),
          crossFadeState:
              !showData ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          secondChild: showData
              ? Column(
                  children: [
                    gapField,
                    cmTitle('Quote Attachments and Quote Files'),
                    sized0hx10,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          if (quoteDocument != null) ...{
                            const FileWithIconAndNameWidget(
                              fileName: "Quote Document",
                            )
                          },
                          for (int i = 0; i < files.length; i++) ...{
                            FileWithIconAndNameWidget(
                              hasIcon: true,
                              fileName:
                                  files[i].fileName ?? files[i].name ?? "",
                            )
                          }
                        ],
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
