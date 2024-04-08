import 'dart:developer';
import 'package:flutter/material.dart';

Widget datePicker(BuildContext context, DateTime selectedDate) {
  return IconButton(
      onPressed: () async {
        final DateTime? picked = await showDatePicker(
            context: context,
            initialDate: selectedDate,
            firstDate: DateTime(2015, 8),
            lastDate: DateTime(2101));
        if (picked != null && picked != selectedDate) {
          selectedDate = picked;
          
          log(selectedDate.toString());
        }
      },
      icon: const Icon(Icons.calendar_month_outlined));
}
