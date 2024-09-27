// ignore_for_file: must_be_immutable

import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/video_list.dart';
import 'package:enviro_mobile_application/widgets/empty_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoGallery extends StatelessWidget {
  VideoGallery({super.key, required this.jobCardData});
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
                child: Text("Videos",
                    style: TextStyle(fontSize: 12.sp, color: Colors.white)),
              ),
            ),
          ),
        ),
        sized0hx05,
        if (jobCardData?.data?.schedule?.jobVideo?.isNotEmpty ?? false)
          SizedBox(
            height: 78.w,
            child: ListView.builder(
              itemCount: jobCardData?.data?.schedule?.jobVideo?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 3.w),
                      child: InkWell(
                        onTap: (){_launchVideoUrl(jobCardData
                                    ?.data?.schedule?.jobVideo?[index].video ?? "");},
                        child: Container(
                          width: 78.w,
                          decoration:
                              BoxDecoration(border: Border.all(width: 0.5)),
                          child: VideoPlayerFromNetwork(
                            videoUrl: jobCardData
                                    ?.data?.schedule?.jobVideo?[index].video ??
                                "",
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.play_arrow,
                      size: 20.w,
                      color: Colors.white,
                    ),
                  ],
                );
              },
            ),
          )
        else
          EmptyDataWidget(),
      ],
    );
  }
  Future<void> _launchVideoUrl(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
}
