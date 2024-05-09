import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../widgets/cmbutton.dart';

final gapField = SizedBox(height: 0.3);
final sized0wx05 = SizedBox(width: 0.3);
final sized0wx10 = SizedBox(width: 2.0);

Card customCard({required Widget child}) => Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Appthemes.cLightGrey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: child,
    );

Expanded expandedShowText2(String value) =>
    Expanded(flex: 3, child: showBlackText(value));

Row expandedRowShowText2(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText2(firsValue),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText2(secondValue),
      ],
    );

Row expandedRowShowTextDate(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText2(firsValue),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText2(secondValue),
      ],
    );

Row expandedRowShowingText2(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText2(firsValue),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText2(secondValue),
        // showIcon(icon: Icon(Icons.today))
      ],
    );

Row expandedRowShowsText2(String firsValue, String secondValue) => Row(
      children: [
        expandedShowText2(firsValue),
        expandedShowText2(secondValue),
      ],
    );

Row expandedRowShowText1(String firsValue, String secondValue) => Row(
      children: [
        Expanded(flex: 3, child: showBlueText(firsValue)),
        sized0wx05,
        showBlueText(':'),
        sized0wx05,
        Expanded(flex: 1, child: showBlueText(secondValue)),
      ],
    );

Expanded imageAndName(String image) => Expanded(
      flex: 2,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 60.w,
            width: 60.w,
          ),
          gapField,
          showBlueText('Name'),
        ],
      ),
    );

Widget buildCardDataOrder(List<Widget> widget, {String? image}) => customCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            if (image != null) ...[
              imageAndName(image),
              sized0wx10,
            ],
            Expanded(
              flex: 7,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => gapField,
                itemCount: widget.length,
                itemBuilder: (context, index) => widget[index],
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );

Widget showData({VehicleModel? data, VehicleActionType? status}) {
  return buildCardDataOrder(
    [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CmButton(height: 25.w, text: 'Folders'),
        ],
      ),
      if (data?.editedDateTime != null)
        expandedRowShowTextDate(
            '', DateFormat.yMEd().add_jms().format(DateTime.now())),
      if (data?.registration != null)
        expandedRowShowText2('Registration no', data!.registration!),
      if (data?.editedDateTime != null)
        expandedRowShowText2(
            'RegoDue', DateFormat.yMMMMd().format(data!.editedDateTime!)),

      if (data?.types != null) expandedRowShowText2('Type', data!.types!),
      if (data?.year != null) expandedRowShowText2('Year', '${data?.year!}'),
      if (data?.odometer != null)
        expandedRowShowText2('odometer', '${data?.odometer}'),
      if (data?.driverName != null)
        expandedRowShowText2('Driver name', '${data?.driverName}'),
      if (data?.sPart != null)
        expandedRowShowText2('spareparts', '${data?.sPart}'),
      if (data?.dateTime != null)
        expandedRowShowText2('date', '${data?.dateTime}'),
      if (data?.serviceDate != null)
        expandedRowShowText2('servicedate', '${data?.serviceDate}'),
      if (data?.lCost != null)
        expandedRowShowText2('labourcost', '${data?.lCost}'),
      // if (data?.totalCost != null)
      //   expandedRowShowText2('totalcost', '${data.totalCost}'),
      // if (data?.time != null) expandedRowShowText2('Time', '${data.time}'),
      // if (data?.filledBy != null)
      //   expandedRowShowText2('Filled By', '${data.filledBy}'),
      // if (data?.currentReadingBefore != null)
      //   expandedRowShowText2('Current Reading', '${data.currentReadingBefore}'),
      // if (data?.readingAfterFilling != null)
      //   expandedRowShowText2('Reading After', '${data.readingAfterFilling}'),
      // if (data?.volumeUsedInLiter != null)
      //   expandedRowShowText2('Reading After', '${data.volumeUsedInLiter}'),
      if (status == VehicleActionType.fuelExpence) rowButton(),
    ],
    // image: data?.image, // Add image here if available
  );
}
