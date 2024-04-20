import 'package:flutter/material.dart';

Widget datePicker(
    BuildContext context, selectedDate, Function(DateTime date) pickerDate) {
  return IconButton(
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(1980, 8),
            lastDate: DateTime(2101));
        if (picked != null && picked != selectedDate) {
          selectedDate = picked;
          pickerDate(picked);
        }
      },
      icon: const Icon(Icons.calendar_month_outlined));
}
