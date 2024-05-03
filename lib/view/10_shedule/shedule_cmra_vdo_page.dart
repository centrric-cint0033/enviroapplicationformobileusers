import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheduleVedeoandPhotoPage extends StatelessWidget {
  const SheduleVedeoandPhotoPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 219,
              child: Row(
                children: [
                  Expanded(
                    child: CmButton(
                      borderRadius: 0,
                      color: const Color.fromARGB(255, 0, 8, 14),
                      buttonTextStyle: const TextStyle(color: Colors.white),
                      onPressed: () {},
                      text: "Upload from Gallery",
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 219,
              child: Row(
                children: [
                  Expanded(
                    child: CmButton(
                      borderRadius: 0,
                      // icon: Icons.add_a_photo,
                      color: const Color.fromARGB(255, 0, 8, 14),
                      buttonTextStyle: const TextStyle(color: Colors.white),
                      onPressed: () {},
                      text: "Upload from Camera",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
