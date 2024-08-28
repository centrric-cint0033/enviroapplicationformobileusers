import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/file_with_icon_and_name_widget.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/sales_model.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/attached_file.dart';
import 'package:enviro_mobile_application/model/02_sales/sales_model/template_response.dart';
import 'quote_document_section.dart';
import '../../../utilis/constant.dart';
import '../../../widgets/cm_title.dart';
import '../../../widgets/01_widgets.dart';
import '../../../widgets/show_confirmation_alert.dart';

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
        return vmSales.saleDetailResponse.loading
            ? Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: const CupertinoActivityIndicator(),
                ),
              )
            : AnimatedCrossFade(
                duration: const Duration(milliseconds: 500),
                firstChild: const SizedBox.shrink(),
                crossFadeState: !showData
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                secondChild: showData
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sized0hx05,
                          cmTitle('Quote Attachments and Quote Files',
                              fontWeight: FontWeight.bold, blackText: true),
                          sized0hx10,
                          CmButton(
                            width: 130.w,
                            text: data?.status,
                            color: Appthemes.cLightGreen,
                          ),
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
                            // if (receivedDocument != null) ...{
                            //   FileWithIconAndNameWidget(
                            //     height: 50.h,
                            //     width: double.infinity,
                            //     onTap: () {
                            //       launchUrlFile(
                            //         receivedDocument,
                            //         receivedDocument.split(".").first,
                            //         context,
                            //       );
                            //     },
                            //     fileName: "Quote file",
                            //   ),
                            // },
                            // sized0hx05,
                            if (clientFiles.isNotEmpty) ...{
                              for (int i = 0; i < clientFiles.length; i++) ...{
                                Padding(
                                  padding: EdgeInsets.only(bottom: 5.h),
                                  child: FileWithIconAndNameWidget(
                                    height: 50.h,
                                    width: double.infinity,
                                    onTap: () {
                                      if (clientFiles[i]
                                              .templateReceiveResponse !=
                                          null) {
                                        launchUrlFile(
                                          clientFiles[i]
                                              .templateReceiveResponse!,
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
                          sized0hx05,
                          if (data?.team?.isNotEmpty ?? false) ...[
                            Text(
                              'Team Members',
                              style: TextStyle(
                                fontSize: 10.h,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            sized0hx05,
                            Padding(
                              padding: EdgeInsets.only(left: 8.w),
                              child: SizedBox(
                                height: 80.h,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: data?.team?.length ?? 0,
                                  itemBuilder: (context, index) {
                                    final datas = data?.team?[index];
                                    return Padding(
                                      padding: EdgeInsets.only(
                                          left: 5.w, right: 5.w),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 40.w,
                                            width: 40.w,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.grey.shade700,
                                                  shape: BoxShape.circle),
                                              child: dpImage("${datas?.dp}"),
                                            ),
                                          ),
                                          sized0hx05,
                                          Text(
                                            "${datas?.name}",
                                            style: TextStyle(fontSize: 9.sp),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ]
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
    submitText2: "No",
    content: "Are you sure want to open the file?",
    onSubmit: () async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
      // final Uri uri = Uri.parse(url);
      // try {
      //   if (await canLaunchUrl(uri)) {
      //     await launchUrl(
      //       uri,
      //       mode: LaunchMode.externalApplication,
      //     );
      //   } else {
      //     throw 'Could not launch $url';
      //   }
      // } catch (e) {
      //   print('Error launching URL: $e');
      // }
    },
  );
}
