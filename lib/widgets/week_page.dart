import 'package:enviro_mobile_application/widgets/card_main_container.dart';
import 'package:flutter/material.dart';

SingleChildScrollView weekpage() {
  return const SingleChildScrollView(
    child: Column(
      children: [
        SizedBox(
          height: 14.0,
        ),
        Text('Todays week shedule',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            )),
        CardMainContainer(),
      ],
    ),
  );
}
