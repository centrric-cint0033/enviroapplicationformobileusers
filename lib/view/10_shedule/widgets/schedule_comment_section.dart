import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScheduleCommentSection extends StatelessWidget {
  const ScheduleCommentSection({super.key, required this.id, required this.i});
  final int id;
  final int i;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Comments',
          style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold),
        ),
        sized0hx10,
        SizedBox(
          child: TextField(
            onChanged: (value) {
              vmSchedule.commentController.text = value;
            },
            controller: vmSchedule.commentController,
            cursorColor: Colors.grey,
            autofocus: false,
            decoration: InputDecoration(
              focusColor: Colors.black12,
              fillColor: Colors.grey.shade300,
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
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    vmSchedule.shedulecommentviewmodelfunction(
                        id: id, comment: vmSchedule.commentController.text);
                  },
                );
              }),
            ),
            style: TextStyle(fontSize: 9.sp),
            maxLines: null,
          ),
        ),
        sized0hx10,
        Observer(
          builder: (_) {
            final comments =
                vmSchedule.shedulecardResponse.data?[i].comments ?? [];
            return vmSchedule.shedulecardResponse.loading
                ? const Center(child: CupertinoActivityIndicator())
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: comments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 8.w),
                        child: SizedBox(
                          height: 55.h,
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Card(
                              color: Colors.white,
                              elevation: 0,
                              child: ListTile(
                                leading: Text(
                                  vmSchedule.shedulecardResponse.data?[i]
                                          .comments?[index].comment ??
                                      'No Comments',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      color: Colors.grey.shade700),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(Icons.delete),
                                  onPressed: () {
                                    showConfirmationAlert(
                                      context: context,
                                      content:
                                          "Are you sure you want to delete?",
                                      submitText: "No",
                                      submitText2: "Yes",
                                      onSubmit: () {},
                                      onSubmit2: () {
                                        vmSchedule
                                            .deleteScheduleCommentServiceApi(
                                                id: vmSchedule
                                                        .shedulecardResponse
                                                        .data?[i]
                                                        .comments?[index]
                                                        .id ??
                                                    0);
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox();
                    },
                  );
          },
        ),
      ],
    );
  }
}
