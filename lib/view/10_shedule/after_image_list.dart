import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_text_button.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class AfterImagesList extends StatelessWidget {
  const AfterImagesList({super.key, required this.i, required this.id});
  final int i;
  final int id;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (context) {
          return Container(
            height: 30.h,
            width: double.infinity - 20.w,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Align(
              alignment: Alignment.centerLeft,
              child: vmSchedule.showDeleteClearButtonsAfterPic
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "After Job Images",
                          style: TextStyle(fontSize: 9.w),
                        ),
                        cmTextButton(
                          onPressed: () {
                            showConfirmationAlert(
                                context: context,
                                content:
                                    "Do you really want to delete these images?",
                                submitText: "Yes",
                                submitText2: "No",
                                onSubmit: () {
                                  vmSchedule.deleteImageScheduleApi(
                                      context: context,
                                      id: id,
                                      imageId: vmSchedule.imageIdsAfterPic,
                                      fromAfterPic: true);
                                });
                          },
                          buttonText: "Delete Media",
                          icon: Icons.delete,
                          bgColor: Colors.red,
                          loading: vmSchedule
                              .deleteAfterImageScheduleResponse.loading,
                        ),
                        cmTextButton(
                            onPressed: () {
                              vmSchedule.clearSelectionModeAfterPic();
                            },
                            buttonText: " Clear Selection  ",
                            bgColor: Appthemes.cPrimary),
                      ],
                    )
                  : Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Row(
                        children: [
                          Text(
                            "After Job Images",
                            style: TextStyle(fontSize: 9.w),
                          ),
                        ],
                      ),
                    ),
            ),
          );
        }),
        sized0hx03,
        Container(
            height: 100.h,
            width: double.infinity - 20.w,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Observer(builder: (context) {
              final res = vmSchedule.sheduleweekResponse;
              final images = res.data?[i].afterPics ?? [];
              vmSchedule.initializeSelectionStatesAfterPic(images.length);
              return ListView.builder(
                itemCount: res.data?[i].afterPics?.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final imageUrl = images[index].file ?? "";
                  return Padding(
                    padding: EdgeInsets.all(8.0.h),
                    child: InkWell(
                      onTap: () async {
                        if (vmSchedule.selectedStatesAfterPic[index]) {
                          vmSchedule.toggleSelectionAfterPic(
                              index, images[index].id!);
                        } else {
                          await _launchImageUrl(imageUrl);
                        }
                      },
                      onLongPress: () {
                        if (vmSchedule.selectedStatesAfterPic[index]) {
                          vmSchedule.toggleSelectionAfterPic(
                              index, images[index].id!);
                        } else {
                          vmSchedule.startSelectionAfterPic(
                              index, images[index].id!);
                        }
                      },
                      child: Observer(builder: (context) {
                        final isSelected =
                            vmSchedule.selectedStatesAfterPic[index];
                        return Container(
                          width: 75.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: isSelected ? 3 : 1,
                                  color: isSelected
                                      ? Appthemes.cPrimary
                                      : Colors.white)),
                          child: Image(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  res.data?[i].afterPics?[index].file ?? "")),
                        );
                      }),
                    ),
                  );
                },
              );
            }))
      ],
    );
  }

  Future<void> _launchImageUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
