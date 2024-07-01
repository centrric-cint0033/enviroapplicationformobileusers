import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
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
          style: TextStyle(fontSize: 9.w, fontWeight: FontWeight.bold),
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
              fillColor: Colors.grey.shade100,
              filled: true,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade100,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              hintText: 'Enter your comments',
              hintStyle: TextStyle(fontSize: 9.w),
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
            style: TextStyle(fontSize: 9.w),
            maxLines: null,
          ),
        ),
        sized0hx10,
        Observer(
          builder: (_) {
            final comments =
                vmSchedule.shedulecardResponse.data?[i].comments ?? [];
            return vmSchedule.commentResponse.loading
                ? const Center(child: CupertinoActivityIndicator())
                : ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: comments.length,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 55.h,
                        child: Card(
                          color: Colors.white70,
                          child: ListTile(
                            leading: Text(
                              vmSchedule.shedulecardResponse.data?[i]
                                      .comments?[index].comment ??
                                  'No Comments',
                              style: TextStyle(
                                  fontSize: 10.w, color: Colors.grey.shade700),
                            ),
                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      title: Text(
                                        "Confirmation",
                                        style: TextStyle(
                                            fontSize: 12.w,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      content: Text(
                                          "Are you sure you want to delete?",
                                          style: TextStyle(fontSize: 9.w)),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Cancel',
                                            style: TextStyle(
                                                color: Appthemes.cPrimary),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            vmSchedule
                                                .deleteScheduleCommentServiceApi(
                                                    id: vmSchedule
                                                            .shedulecardResponse
                                                            .data?[i]
                                                            .comments?[index]
                                                            .id ??
                                                        0);
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text(
                                            'Delete',
                                            style: TextStyle(
                                                color: Appthemes.cPrimary),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                );
                              },
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
