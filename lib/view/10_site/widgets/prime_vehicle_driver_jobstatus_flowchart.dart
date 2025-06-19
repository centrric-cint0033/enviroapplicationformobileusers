// ignore_for_file: must_be_immutable

import 'package:enviro_mobile_application/model/10_site/job_card_res_model.dart/job_card_model/job_card_models.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class FlowChartLines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 2;
    canvas.drawLine(Offset(50.w, 63.w), Offset(240.w, 63.w), paint);
    canvas.drawLine(Offset(220.w, 50.w), Offset(220.w, 200.w), paint);
    canvas.drawLine(Offset(30.w, 203.w), Offset(200.w, 203.w), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

Widget flowChartBlock(String title, String dateTime, Color color) {
  return Container(
    width: 62.w,
    height: 108.w,
    padding: const EdgeInsets.all(4),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.blue, width: 1),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 11.sp),
        ),
        sized0hx03,
        Center(
          child: Text(
            dateTime,
            style: TextStyle(color: Colors.white, fontSize: 10.sp),
          ),
        ),
        const SizedBox(height: 2),
      ],
    ),
  );
}

class FlowChartScreen extends StatelessWidget {
  FlowChartScreen({super.key, required this.jobCardData});
  JobCardModels? jobCardData;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          painter: FlowChartLines(),
        ),
        Padding(
          padding: EdgeInsets.all(6.w),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  flowChartBlock(
                      'Depart Enviro Facility',
                      jobCardData?.data?.schedule?.departEnviroFacility !=
                                  null &&
                              jobCardData
                                      ?.data?.schedule?.departEnviroFacility !=
                                  ""
                          ? formatDateTime(jobCardData
                                  ?.data?.schedule?.departEnviroFacility ??
                              "")
                          : "--",
                      jobCardData?.data?.schedule?.departEnviroFacility !=
                                  null &&
                              jobCardData
                                      ?.data?.schedule?.departEnviroFacility !=
                                  ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                  flowChartBlock(
                      'Job Started',
                      jobCardData?.data?.schedule?.startJob != null &&
                              jobCardData?.data?.schedule?.startJob != ""
                          ? formatDateTime(
                              jobCardData?.data?.schedule?.startJob ?? "")
                          : "--",
                      jobCardData?.data?.schedule?.startJob != null &&
                              jobCardData?.data?.schedule?.startJob != ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                  flowChartBlock(
                      'Job Finished',
                      jobCardData?.data?.schedule?.finishJob != null &&
                              jobCardData?.data?.schedule?.finishJob != ""
                          ? formatDateTime(
                              jobCardData?.data?.schedule?.finishJob ?? "")
                          : "--",
                      jobCardData?.data?.schedule?.finishJob != null &&
                              jobCardData?.data?.schedule?.finishJob != ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                ],
              ),
              sized0hx30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  flowChartBlock(
                      'Arrive Enviro Facility',
                      jobCardData?.data?.schedule?.arriveEnviroFacility !=
                                  null &&
                              jobCardData
                                      ?.data?.schedule?.arriveEnviroFacility !=
                                  ""
                          ? formatDateTime(jobCardData
                                  ?.data?.schedule?.arriveEnviroFacility ??
                              "")
                          : "--",
                      jobCardData?.data?.schedule?.arriveEnviroFacility !=
                                  null &&
                              jobCardData
                                      ?.data?.schedule?.arriveEnviroFacility !=
                                  ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                  flowChartBlock(
                      'Depart Waste Depot',
                      jobCardData?.data?.schedule?.departWasteDepot != null &&
                              jobCardData?.data?.schedule?.departWasteDepot !=
                                  ""
                          ? formatDateTime(
                              jobCardData?.data?.schedule?.departWasteDepot ??
                                  "")
                          : "--",
                      jobCardData?.data?.schedule?.departWasteDepot != null &&
                              jobCardData?.data?.schedule?.departWasteDepot !=
                                  ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                  flowChartBlock(
                      'Arrive Waste Depot',
                      jobCardData?.data?.schedule?.arriveAtWasteDepot != null &&
                              jobCardData?.data?.schedule?.arriveAtWasteDepot !=
                                  ""
                          ? formatDateTime(
                              jobCardData?.data?.schedule?.arriveAtWasteDepot ??
                                  "")
                          : "--",
                      jobCardData?.data?.schedule?.arriveAtWasteDepot != null &&
                              jobCardData?.data?.schedule?.arriveAtWasteDepot !=
                                  ""
                          ? Appthemes.cPrimary
                          : Colors.grey.shade700),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

String formatDateTime(String dateTimeString, {bool showTime = true}) {
  // Parse the string to a DateTime object
  DateTime dateTime = DateTime.parse(dateTimeString);

  // Define your desired format
  DateFormat formatter =
      showTime ? DateFormat('dd-MM-yy hh:mm a') : DateFormat('dd-MM-yy');

  // Format the DateTime object
  String formatted = formatter.format(dateTime);

  return formatted;
}
