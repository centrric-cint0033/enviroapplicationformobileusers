import 'package:enviro_mobile_application/model/10_site/quote_comment_res_model/quote_comment_res_model/quote_comment_res_model.dart';
import 'package:enviro_mobile_application/model/11_previous_sale/previous_sale_res_model/previous_sale_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_site/utils/site_utils.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuoteCommentCardWidget extends StatelessWidget {
  const QuoteCommentCardWidget({super.key, this.data});
  final PreviousSaleResModel? data;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8.w)),
      child: Column(children: [
        Padding(
          padding: EdgeInsets.all(6.w),
          child: Container(
            width: double.infinity,
            color: Colors.grey.shade600,
            child: Padding(
              padding: EdgeInsets.all(3.w),
              child: Text(
                "Quote Comments",
                style: TextStyle(fontSize: 10.sp, color: Colors.white),
              ),
            ),
          ),
        ),
        Observer(
          builder: (context) {
            List<QuoteCommentResModel> quoteComments =
                vmSite.quoteCommentResponse.data?.toList() ?? [];
            return WWResponseHandler(
                data: vmSite.quoteCommentResponse,
                onRefresh: () async =>
                    vmSite.getQuoteComments(data?.quote?.toInt()),
                isEmpty: vmSite.quoteCommentResponse.data?.isEmpty ?? true,
                onTap: () => vmSite.searchCtr.text.isNotEmpty
                    ? onChanged(vmSite.searchCtr.text)
                    : vmSite.getQuoteComments(data?.quote?.toInt()),
                child: QuoteCommentsLIstWidget(
                  quoteComments: quoteComments,
                  data: data,
                ));
          },
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w),
          child: ConstrainedBox(
            constraints:
                BoxConstraints(minHeight: 10.w), // Allows height to expand
            child: TextField(
              onChanged: (value) {
                vmSite.commentController.text = value;
              },
              controller: vmSite.commentController,
              cursorColor: Colors.grey,
              autofocus: false,
              decoration: InputDecoration(
                focusColor: Colors.black12,
                fillColor: Colors.white,
                filled: true,
                enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey.shade300,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                hintText: 'Add a comment',
                hintStyle: TextStyle(fontSize: 9.sp),
                suffixIcon: Observer(builder: (context) {
                  return IconButton(
                    icon: vmSite.quoteCommentResponse.loading
                        ? SizedBox(
                            height: 15.w,
                            width: 15.w,
                            child: const CircularProgressIndicator(
                              color: Colors.grey,
                              strokeWidth: 2,
                            ),
                          )
                        : Icon(
                            Icons.send,
                            size: 14.sp,
                          ),
                    onPressed: () {
                      if (vmSite.commentController.text.isNotEmpty) {
                        vmSite.addQuoteCommentApi(
                            context: context,
                            quoteId: data?.quote?.toInt() ?? 0,
                            comment: vmSite.commentController.text);
                      }
                    },
                  );
                }),
              ),
              style: TextStyle(fontSize: 9.sp),
              maxLines: null, // Allows for dynamic height based on content
            ),
          ),
        ),
        sized0hx05
      ]),
    );
  }
}

class QuoteCommentsLIstWidget extends StatelessWidget {
  const QuoteCommentsLIstWidget({
    super.key,
    required this.quoteComments,
    this.data,
  });

  final List<QuoteCommentResModel> quoteComments;
  final PreviousSaleResModel? data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: ListView.separated(
        itemCount: quoteComments.length + 1,
        physics: const NeverScrollableScrollPhysics(),
        separatorBuilder: (context, index) => sized0hx05,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 5.h, bottom: 5.h),
        itemBuilder: (context, index) {
          return index == quoteComments.length
              ? vmSite.permanentSiteResponse.paginationLoading
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
              : Container(
                  color: Colors.blue.shade200,
                  child: Padding(
                    padding: EdgeInsets.all(8.w),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Observer(builder: (context) {
                            return Row(
                              children: [
                                Text(
                                  quoteComments[index].comment ?? "",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                                vmSite.editQuoteCommentResponse.loading &&
                                        vmSite.loadinIndexComment == index
                                    ? const CupertinoActivityIndicator()
                                    : const SizedBox.shrink()
                              ],
                            );
                          }),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  vmSite.editCommentController.text =
                                      quoteComments[index].comment ?? "";
                                  showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: <Widget>[
                                            sized0hx10,
                                            WWTextField(
                                              controller:
                                                  vmSite.editCommentController,
                                            ),
                                          ],
                                        ),
                                        actions: <Widget>[
                                          TextButton(
                                            child: Text('Cancel',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                          TextButton(
                                              child: Text(
                                                'Edit',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              onPressed: () {
                                                vmSite.loadinIndexComment =
                                                    index;
                                                vmSite.editQuoteCommentApi(
                                                    context: context,
                                                    id: quoteComments[index]
                                                            .id
                                                            ?.toInt() ??
                                                        0,
                                                    quoteId:
                                                        data?.quote?.toInt() ??
                                                            0,
                                                    comment: vmSite
                                                        .editCommentController
                                                        .text);
                                                Navigator.of(context).pop();
                                              })
                                        ],
                                      );
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.edit,
                                  size: 14.w,
                                ),
                              ),
                              sized0wx20,
                              InkWell(
                                onTap: () {
                                  showConfirmationAlert(
                                    context: context,
                                    content: "Are you sure you want to delete?",
                                    submitText: "No",
                                    submitText2: "Yes",
                                    onSubmit: () {},
                                    onSubmit2: () {
                                      vmSite.deleteQuoteCommentApi(
                                          context: context,
                                          id: quoteComments[index]
                                                  .id
                                                  ?.toInt() ??
                                              0,
                                          quoteId: data?.quote?.toInt() ?? 0);
                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.delete,
                                  size: 14.w,
                                ),
                              )
                            ],
                          )
                        ]),
                  ),
                );
        },
      ),
    );
  }
}
