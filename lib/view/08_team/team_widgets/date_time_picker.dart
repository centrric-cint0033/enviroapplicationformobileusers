import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget dateTimePicker(BuildContext context, DateTime selectedDate,
    Function(DateTime date) pickerDate) {
  return IconButton(
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(1980, 8),
            lastDate: DateTime(2101));
        if (picked != null) {
          // Show the time picker after a date has been selected
          // ignore: use_build_context_synchronously
          final TimeOfDay? pickedTime = await showTimePicker(
            context: context,
            initialTime: TimeOfDay.fromDateTime(selectedDate),
          );

          if (pickedTime != null) {
            // Combine the picked date and time
            DateTime pickedDateTime = DateTime(
              picked.year,
              picked.month,
              picked.day,
              pickedTime.hour,
              pickedTime.minute,
            );

            DateFormat format = DateFormat('yyyy-MM-dd HH:mm:ss');
            String formattedDate = format.format(pickedDateTime);
            DateTime finalDateTime = format.parse(formattedDate);
            pickerDate(finalDateTime);
          }
        }
      },
      icon: Icon(
        Icons.calendar_month_outlined,
        color: Colors.grey.shade700,
      ));
}

dateTimePickerWithouIcon(BuildContext context, selectedDate,
    Function(DateTime date) pickerDate) async {
  final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1980, 8),
      lastDate: DateTime(2101));
  if (picked != null) {
    // Show the time picker after a date has been selected
    // ignore: use_build_context_synchronously
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );

    if (pickedTime != null) {
      // Combine the picked date and time
      DateTime pickedDateTime = DateTime(
        picked.year,
        picked.month,
        picked.day,
        pickedTime.hour,
        pickedTime.minute,
      );

      DateFormat format = DateFormat('yyyy-MM-dd HH:mm:ss');
      String formattedDate = format.format(pickedDateTime);
      DateTime finalDateTime = format.parse(formattedDate);
      pickerDate(finalDateTime);
    }
  }
}
