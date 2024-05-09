import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheduleSignaturePage extends StatelessWidget {
  const SheduleSignaturePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ), // Add some space between the two containers
              Container(
                height: 103,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 247, 209),
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Type of waste:',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Any change in waste is mentioned here...',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ), // Add some space between the two containers
              Container(
                height: 103,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 208, 247, 209),
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'WasteLiters:',
                        style: TextStyle(fontSize: 16),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText:
                              'Any change in Amount of Liters collected mentioned here...',
                          border: InputBorder.none,
                        ),
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              sized0hx20,
              Container(
                height: 68,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change in waste type and its liters will be uploaded with client\'s signature',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              sized0hx20,
              Container(
                width: 430,
                height: 288,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Stack(
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Please provide your signature:',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                    Positioned(
                      bottom: 20,
                      right: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          CmButton(
                            color: Colors.white38,
                            onPressed: () {},
                            text: 'save',
                          ),
                          const SizedBox(width: 10),
                          CmButton(
                            color: Colors.white38,
                            onPressed: () {},
                            text: 'Reset',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              sized0hx40,
              const Text(
                'Comments',
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40.0),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    hintText: 'Enter your comments',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {},
                    ),
                  ),
                  style: TextStyle(color: Colors.black),
                  maxLines: null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
