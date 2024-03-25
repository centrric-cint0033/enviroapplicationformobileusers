import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/utilis/imagepath.dart';
import 'package:enviro_mobile_application/widgets/card_main_container.dart';
import 'package:enviro_mobile_application/widgets/week_page.dart';
import 'package:flutter/material.dart';

class WeekPage extends StatelessWidget {
  const WeekPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingImage: Image.asset(ImageConstant.imagePath),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: weekpage(),
    );
  }
}
