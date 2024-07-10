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
      }
    },
    icon: Icon(
      Icons.calendar_month_rounded,
      color: Colors.grey.shade700,
    ),
  );
}
