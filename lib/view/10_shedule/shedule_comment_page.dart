import 'package:auto_route/annotations.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/01_team_widgets.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class SheduleCommentPage extends StatelessWidget {
  SheduleCommentPage({
    Key? key,
    required this.id,
    required this.i,
  }) : super(key: key);

  final TextEditingController _commentPageController = TextEditingController();

  final int id;
  final int i;

  @override
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
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Comments',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              child: Observer(builder: (_) {
                return TextField(
                  onChanged: (value) {
                    _commentPageController.text = value;
                    print('Comments: $_commentPageController');
                  },
                  controller: _commentPageController,
                  decoration: InputDecoration(
                    focusColor: Colors.black12,
                    fillColor: Colors.grey[200],
                    filled: true,
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    hintText: 'Enter your comments',
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.send),
                      onPressed: () {
                        vmJobcard.shedulecommentviewmodelfunction(
                            id: id, comment: _commentPageController.text);
                        vmJobcard.shedulecardviewmodelfunction();
                        _commentPageController.clear();
                      },
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  maxLines: null,
                );
              }),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Observer(builder: (_) {
                print('shaaaaaaaa$id');
                final comments =
                    vmJobcard.shedulecardResponse.data?[i].comments ?? [];

                return ListView.separated(
                  itemCount: comments.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 55,
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
                            Positioned(
                              top: 10,
                              left: 10,
                              child: Text(
                                vmJobcard.shedulecardResponse.data?[i]
                                        .comments?[index].comment ??
                                    'nocomments',
                                style: const TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox();
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}



      // SizedBox(
      //         height: 55,
      //         child: Card(
      //           color: Colors.white70,
      //           child: Stack(
      //             children: [
      //               Positioned(
      //                 top: 0,
      //                 right: 0,
      //                 child: IconButton(
      //                   icon: const Icon(Icons.delete),
      //                   onPressed: () {
      //                     showDialog(
      //                       context: context,
      //                       builder: (BuildContext context) {
      //                         return AlertDialog(
      //                           content: const Text(
      //                               "Are you sure you want to delete?"),
      //                           actions: [
      //                             ElevatedButton(
      //                               onPressed: () {
      //                                 Navigator.pop(context);
      //                               },
      //                               child: const Text("Delete"),
      //                             ),
      //                             ElevatedButton(
      //                               onPressed: () {
      //                                 Navigator.pop(context);
      //                               },
      //                               child: const Text("Back"),
      //                             ),
      //                           ],
      //                         );
      //                       },
      //                     );
      //                   },
      //                 ),
      //               ),
      //               const Positioned(
      //                 top: 10,
      //                 left: 10,
      //                 child: Text(
      //                   "Yxaikcsd[vpdf]",
      //                   style: TextStyle(
      //                     fontSize: 18,
      //                   ),
      //                 ),
      //               ),
      //             ],
      //           ),
      //         ),
      //       )