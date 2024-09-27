import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/widgets/empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentsWidget extends StatelessWidget {
  CommentsWidget({super.key, required this.jobCardData});
  JobCardModels? jobCardData;
  @override
  Widget build(BuildContext context) {
    return jobCardData?.data?.schedule?.jobVideo?.isNotEmpty ?? false
        ? ListView.builder(
            itemCount: jobCardData?.data?.schedule?.comments?.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Card(
                child: Text(
                  jobCardData?.data?.schedule?.comments?[index].comment ?? "",
                  style: TextStyle(fontSize: 10.sp),
                ),
              );
            },
          )
        : EmptyDataWidget();
  }
}
