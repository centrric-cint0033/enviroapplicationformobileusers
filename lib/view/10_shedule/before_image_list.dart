import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_text_button.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BeforeImagesList extends StatelessWidget {
  const BeforeImagesList({super.key, required this.i, required this.id});
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
              child: vmSchedule.showDeleteClearButtonsBeforePic
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Before Job Images",
                          style: TextStyle(fontSize: 9.sp),
                        ),
                        cmTextButton(
                          buttonText: "Delete Media",
                          icon: Icons.delete,
                          bgColor: Colors.red,
                          loading:
                              vmSchedule.deleteImageScheduleResponse.loading,
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
                                      imageId: vmSchedule.imageIds);
                                });
                          },
                        ),
                        cmTextButton(
                            onPressed: () {
                              vmSchedule.clearSelectionModeBeforePic();
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
                            "Before Job Images",
                            style: TextStyle(fontSize: 9.sp),
                          ),
                        ],
                      ),
                    ),
            ),
          );
        }),
        sized0hx03,
        Container(
            height: 90.h,
            width: double.infinity - 20.w,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Observer(builder: (context) {
              final res = vmSchedule.shedulecardResponse;
              final images = res.data?[i].beforePics ?? [];
              vmSchedule.initializeSelectionStatesBeforePic(images.length);
              return ListView.builder(
                itemCount: res.data?[i].beforePics?.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final imageUrl = images[index].file ?? "";
                  return Padding(
                    padding: EdgeInsets.all(8.0.h),
                    child: InkWell(
                      onTap: () async {
                        if (vmSchedule.selectedIndexBeforePic == index) {
                          vmSchedule.toggleSelectionBeforePic(
                              index, images[index].id!);
                        } else if (!vmSchedule.selectedStatesBeforePic
                            .any((isSelected) => isSelected)) {
                          await vmSchedule.launchURL(imageUrl);
                        } else {
                          vmSchedule.toggleSelectionBeforePic(
                              index, images[index].id!);
                        }
                      },
                      onLongPress: () {
                        if (!vmSchedule.selectedStatesBeforePic
                            .any((isSelected) => isSelected)) {
                          vmSchedule.startSelectionBeforePic(
                              index, images[index].id!);
                        }
                      },
                      // onTap: () async {
                      //   if (vmSchedule.selectedStatesBeforePic[index]) {
                      //     vmSchedule.toggleSelectionBeforePic(
                      //         index, images[index].id!);
                      //   } else {
                      //     await _launchImageUrl(imageUrl);
                      //   }
                      // },
                      // onLongPress: () {
                      //   if (vmSchedule.selectedStatesBeforePic[index]) {
                      //     vmSchedule.toggleSelectionBeforePic(
                      //         index, images[index].id!);
                      //   } else {
                      //     vmSchedule.startSelectionBeforePic(
                      //         index, images[index].id!);
                      //   }
                      // },
                      child: Observer(builder: (context) {
                        final isSelected =
                            vmSchedule.selectedStatesBeforePic[index];
                        return Container(
                          width: 78.h,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: isSelected ? 4 : 1,
                                  color: isSelected
                                      ? Appthemes.cPrimary
                                      : Colors.white)),
                          child: Image(
                              fit: BoxFit.cover,
                              image: CachedNetworkImageProvider(
                                  res.data?[i].beforePics?[index].file ?? "")),
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
}
