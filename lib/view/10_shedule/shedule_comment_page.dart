import 'package:auto_route/annotations.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SheduleCommentPage extends StatelessWidget {
  const SheduleCommentPage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Comments'),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Comments',
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.send),
                    onPressed: () {},
                  ),
                ),
                maxLines: null,
              ),
            ),
            sized0hx20,
            SizedBox(
              height: 75,
              child: Card(
                color: Colors.white70,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      right: 0,
                      child: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: const Text(
                                    "Are you sure you want to delete?"),
                                actions: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Delete"),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Back"),
                                  ),
                                ],
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const Positioned(
                      top: 10,
                      left: 10,
                      child: Text(
                        "Yxaikcsd[vpdf]",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
