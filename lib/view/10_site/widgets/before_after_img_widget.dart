import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeforeAndAfterImgWidget extends StatelessWidget {
  BeforeAndAfterImgWidget({super.key, required this.jobCardData});
  JobCardModels? jobCardData;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sized0hx05,
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: const BoxDecoration(color: Colors.green),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: Text("Before Job Images",
                    style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              ),
            ),
          ),
        ),
        sized0hx05,
        if (jobCardData?.data?.schedule?.beforePics?.isNotEmpty ?? false)
          SizedBox(
            height: 78.w,
            child: ListView.builder(
              itemCount: jobCardData?.data?.schedule?.beforePics?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 3.w),
                  child: InkWell(
                    onTap: () {
                      vmSchedule.launchURL(jobCardData
                              ?.data?.schedule?.beforePics?[index].image ??
                          "");
                    },
                    child: Container(
                      width: 78.w,
                      decoration: BoxDecoration(border: Border.all(width: 0.5)),
                      child: Image(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(jobCardData
                                  ?.data?.schedule?.beforePics?[index].image ??
                              "")),
                    ),
                  ),
                );
              },
            ),
          )
        else
          EmptyDataWidget(),
        sized0hx05,
        SizedBox(
          width: double.infinity,
          child: DecoratedBox(
            decoration: const BoxDecoration(color: Appthemes.cPrimary),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(3.w),
                child: Text("After Job Images",
                    style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              ),
            ),
          ),
        ),
        sized0hx05,
        if (jobCardData?.data?.schedule?.afterPics?.isNotEmpty ?? false)
          SizedBox(
            height: 78.w,
            child: ListView.builder(
              itemCount: jobCardData?.data?.schedule?.afterPics?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 3.w),
                  child: InkWell(
                    onTap: () {
                      vmSchedule.launchURL(jobCardData
                              ?.data?.schedule?.afterPics?[index].image ??
                          "");
                    },
                    child: Container(
                      width: 78.w,
                      decoration: BoxDecoration(border: Border.all(width: 0.5)),
                      child: Image(
                          fit: BoxFit.cover,
                          image: CachedNetworkImageProvider(jobCardData
                                  ?.data?.schedule?.afterPics?[index].image ??
                              "")),
                    ),
                  ),
                );
              },
            ),
          )
        else
          EmptyDataWidget(),
      ],
    );
  }
}
