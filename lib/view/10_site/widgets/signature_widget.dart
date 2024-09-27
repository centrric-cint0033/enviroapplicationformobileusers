// ignore_for_file: must_be_immutable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignatureWidget extends StatelessWidget {
  SignatureWidget({super.key, required this.jobCardData});
  JobCardModels? jobCardData;
  @override
  Widget build(BuildContext context) {
    return jobCardData?.data?.schedule?.signature != null &&
            jobCardData?.data?.schedule?.signature != ""
        ? Column(
            children: [
              sized0hx05,
              SizedBox(
                width: double.infinity,
                child: DecoratedBox(
                  decoration: const BoxDecoration(color: Appthemes.cPrimary),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(3.w),
                      child: Text(
                          "${jobCardData?.data?.schedule?.signatureName ?? ""}",
                          style:
                              TextStyle(fontSize: 12.sp, color: Colors.white)),
                    ),
                  ),
                ),
              ),
              sized0hx05,
              SizedBox(
                width: 75.w,
                child: Image(
                    fit: BoxFit.cover,
                    image: CachedNetworkImageProvider(
                        jobCardData?.data?.schedule?.signature ?? "")),
              )
            ],
          )
        : showBlackText("No Signature");
  }
}
