import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/before_after_img_widget.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/comments_widget.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/signature_widget.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/video_gallery_widget.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImgVdoCmntsSignWidget extends StatelessWidget {
  ImgVdoCmntsSignWidget({super.key, required this.jobCardData});
  JobCardModels? jobCardData;
  List<String> buttonNames = [
    "Image Gallery",
    "Video Gallery",
    "Comments",
    "Signature"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sized0hx10,
        SizedBox(
          height: 30.w,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: buttonNames.length,
            itemBuilder: (context, index) {
              return Observer(
                builder: (_) {
                  bool isSelected = vmSite.selectedButtonIndex == index;
                  return Padding(
                    padding: EdgeInsets.only(right: 4.w),
                    child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: isSelected
                              ? Appthemes.cPrimary
                              : Colors.grey.shade300,
                          shape: StadiumBorder()),
                      onPressed: () {
                        vmSite.selectButton(index);
                      },
                      child: Text(
                        buttonNames[index],
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: isSelected
                              ? Appthemes.cWhite
                              : Appthemes.blackColor,
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
        sized0hx10,
         Observer(
          builder: (_) {
            switch (vmSite.selectedButtonIndex) {
              case 0:
                return BeforeAndAfterImgWidget(jobCardData: jobCardData);
              case 1:
                return VideoGallery(jobCardData: jobCardData);
              case 2:
                return CommentsWidget(jobCardData: jobCardData);
              case 3:
                return SignatureWidget(jobCardData: jobCardData);
              default:
                return SizedBox(); // Empty widget if no button is selected
            }
          },
        ),
      ],
    );
  }
}
