import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

Widget datePicker(BuildContext context, DateTime selectedDate) {
  return Observer(
    builder: (context) => IconButton(
        onPressed: () async {
          final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: selectedDate,
              firstDate: DateTime(2015, 8),
              lastDate: DateTime(2101));
          if (picked != null && picked != selectedDate) {
            selectedDate = picked;
          }
        },
        icon: const Icon(Icons.calendar_month_outlined)),
  );
}
