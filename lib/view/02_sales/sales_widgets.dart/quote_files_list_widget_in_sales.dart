import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/file_with_icon_and_name_widget.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/attached_file.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/template_response.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';

import '../../../widgets/show_confirmation_alert.dart';
import 'quote_document_section.dart';
import '../../../utilis/constant.dart';
import '../../../widgets/cm_title.dart';
import '../../../widgets/01_widgets.dart';

class QuoteFilesListWidgetInSales extends StatelessWidget {
  const QuoteFilesListWidgetInSales({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        SalesModel? data = vmSales.saleDetailResponse.data;
        List<AttachedFile> files = data?.attachedFiles ?? [];
        List<TemplateResponse> clientFiles = data?.templateResponse ?? [];
        String? quoteDocument = data?.quoteFile;
        String? receivedDocument = data?.receivedFile;
        final bool showData = files.isNotEmpty ||
            quoteDocument != null ||
            clientFiles.isNotEmpty ||
            receivedDocument != null;

        return AnimatedCrossFade(
          duration: const Duration(milliseconds: 500),
          firstChild: const SizedBox.shrink(),
          crossFadeState:
              !showData ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          secondChild: showData
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    gapField,
                    cmTitle('Quote Attachments and Quote Files'),
                    sized0hx10,
                    QuoteDocumentSection(
                      files: files,
                      quoteDocument: quoteDocument,
                    ),
                    sized0hx10,
                    if (clientFiles.isNotEmpty) ...{
                      showBlackText(
                        "Client Response",
                        fontWeight: FontWeight.w600,
                      ),
                      sized0hx10,
                      if (receivedDocument != null) ...{
                        FileWithIconAndNameWidget(
                          height: 50.h,
                          width: double.infinity,
                          onTap: () {
                            launchUrlFile(
                              receivedDocument,
                              receivedDocument.split(".").first,
                              context,
                            );
                          },
                          fileName: "Quote file",
                        ),
                      },
                      sized0hx05,
                      if (clientFiles.isNotEmpty) ...{
                        for (int i = 0; i < clientFiles.length; i++) ...{
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: FileWithIconAndNameWidget(
                              height: 50.h,
                              width: double.infinity,
                              onTap: () {
                                if (clientFiles[i].templateReceiveResponse !=
                                    null) {
                                  launchUrlFile(
                                    clientFiles[i].templateReceiveResponse!,
                                    clientFiles[i]
                                        .templateReceiveResponse!
                                        .split(".")
                                        .first,
                                    context,
                                  );
                                }
                              },
                              fileName: clientFiles[i].templateName ?? "",
                            ),
                          ),
                        }
                      }
                    },
                    sized0hx20,
                  ],
                )
              : const SizedBox.shrink(),
        );
      },
    );
  }
}

Future<void> launchUrlFile(
  String url,
  String filename,
  BuildContext context,
) async {
  showConfirmationAlert(
    context: context,
    submitText: "Yes",
    content: "Are you sure want to open the file?",
    onSubmit: () async {
      try {
        final uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        } else {
          throw Exception('Could not launch $url');
        }
      } catch (e) {
        debugPrint("$e");
      }
    },
  );
}
