import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';

Widget timePicker(BuildContext context, TimeOfDay selectedTime,
    Function(TimeOfDay time) pickerTime) {
  return IconButton(
    onPressed: () async {
      // Show the time picker
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: selectedTime,
      );

      // If a time was picked, update the selected time and call the pickerTime callback
      if (pickedTime != null) {
        pickerTime(pickedTime);
        if (vmTeam.selectedStartTime != null &&
            vmTeam.selectedEndTime != null) {
          Duration duration = calculateDuration(
              vmTeam.selectedStartTime!, vmTeam.selectedEndTime!);
          vmTeam.totalHrsController.text = formatDuration(duration);
        }
      }
    },
    icon: Icon(
      Icons.calendar_month_rounded,
      color: Colors.grey.shade700,
    ),
  );
}

Duration calculateDuration(TimeOfDay start, TimeOfDay end) {
  final now = DateTime.now();
  final startDateTime =
      DateTime(now.year, now.month, now.day, start.hour, start.minute);
  final endDateTime =
      DateTime(now.year, now.month, now.day, end.hour, end.minute);

  return endDateTime.difference(startDateTime);
}

String formatDuration(Duration duration) {
  int hours = duration.inHours;
  int minutes = duration.inMinutes.remainder(60);
  return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}";
}
