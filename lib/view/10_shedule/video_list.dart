import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_text_button.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class VideoList extends StatelessWidget {
  const VideoList({Key? key, required this.i, required this.id})
      : super(key: key);
  final int i;
  final int id;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Observer(builder: (context) {
          return Container(
            height: 30.h,
            width: double.infinity - 20.w,
            decoration: BoxDecoration(color: Colors.grey.shade300),
            child: Align(
              alignment: Alignment.centerLeft,
              child: vmSchedule.showDeleteClearButtonsVideo
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Video",
                          style: TextStyle(
                            fontSize: 9.w,
                          ),
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
                                  "Do you really want to delete these videos?",
                              submitText: "Yes",
                              submitText2: "No",
                              onSubmit: () {
                                vmSchedule.deleteImageScheduleApi(
                                  context: context,
                                  id: id,
                                  imageId: vmSchedule.imageIdsGalleryPic,
                                );
                              },
                            );
                          },
                        ),
                        cmTextButton(
                          onPressed: () {
                            vmSchedule.clearSelectionModeGalleryPic();
                          },
                          buttonText: " Clear Selection  ",
                          bgColor: Colors.blue,
                        ),
                      ],
                    )
                  : Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Row(
                        children: [
                          Text(
                            "Video",
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
          height: 90.h,
          width: double.infinity - 20.w,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Observer(builder: (context) {
            final res = vmSchedule.sheduleweekResponse;
            final videos = res.data?[i].jobVideo ?? [];
            vmSchedule.initializeSelectionStatesVideo(videos.length);
            return ListView.builder(
              itemCount: videos.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final videoUrl = videos[index].video ?? "";

                return Padding(
                  padding: EdgeInsets.all(8.0.h),
                  child: InkWell(
                    onTap: () async {
                      if (vmSchedule.selectedIndexVideo == index) {
                        vmSchedule.toggleSelectionVideo(
                            index, videos[index].id!);
                      } else if (!vmSchedule.selectedStatesVideo
                          .any((isSelected) => isSelected)) {
                        await _launchVideoUrl(videoUrl);
                      } else {
                        vmSchedule.toggleSelectionVideo(
                            index, videos[index].id!);
                      }
                    },
                    onLongPress: () {
                      if (!vmSchedule.selectedStatesVideo
                          .any((isSelected) => isSelected)) {
                        vmSchedule.startSelectionVideo(
                            index, videos[index].id!);
                      }
                    },
                    child: Observer(builder: (context) {
                      final isSelected = vmSchedule.selectedStatesVideo[index];
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 78.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: isSelected ? 4 : 1,
                                    color: isSelected
                                        ? Appthemes.cPrimary
                                        : Colors.white)),
                            child: VideoPlayerFromNetwork(
                              videoUrl: videoUrl,
                            ),
                          ),
                          Icon(
                            Icons.play_arrow,
                            size: 20.w,
                            color: Colors.white,
                          ),
                        ],
                      );
                    }),
                  ),
                );
              },
            );
          }),
        ),
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

class VideoPlayerFromNetwork extends StatefulWidget {
  final String videoUrl;

  VideoPlayerFromNetwork({required this.videoUrl});

  @override
  _VideoPlayerFromNetworkState createState() => _VideoPlayerFromNetworkState();
}

class _VideoPlayerFromNetworkState extends State<VideoPlayerFromNetwork> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize().then((_) {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeVideoPlayerFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          );
        } else {
          return const Center(child: CircularProgressIndicator(color: Appthemes.cPrimary,));
        }
      },
    );
  }
}
