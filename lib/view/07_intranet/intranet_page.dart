import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/07_intranet/intranet_inside_page.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';

import 'package:enviro_mobile_application/widgets/cmcustomformfield.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/utilis/imagepath.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class IntranetPage extends StatelessWidget {
  const IntranetPage({Key? key});

  void _handleIntranetButtonTap() {
    print('Right button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const cmn_leading_icon(),
        title: cmnTitleWidget('Intranet'),
        actions: cmn_action_icon,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, right: 18),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('Folders'),
                  ),
                  Observer(builder: (_) {
                    return ElevatedButton(
                      onPressed: () {
                        _showMyfolderDialog(context);
                      },
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.white),
                        ),
                        // backgroundColor:
                        //     MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Add folder+',
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Cmformfield(
              borderColor: Colors.black12,
              cursorHeight: 25,
              hinttext: 'Search by folder name',
              height: 28,
              width: double.infinity,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            const SizedBox(height: 16),
            Observer(builder: (_) {
              return ListView.separated(
                shrinkWrap: true,
                itemCount:
                    vmIntranet.intranetpageResponse.data?.folders.isEmpty ??
                            true
                        ? 0
                        : vmIntranet.intranetpageResponse.data?.folders[0]
                                .folders.length ??
                            0,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(height: 6.0),
                itemBuilder: (BuildContext context, int index) {
                  var data = vmIntranet
                      .intranetpageResponse.data?.folders[0].folders[index];

                  if (data != null) {
                    String folderName = data.name;
                    return _buildCard(folderName, context, data.id);
                  } else {
                    return Container();
                  }
                },
              );
            }),
          ],
        ),
      ),
    );
  }

  Future<void> _showMyfolderDialog(BuildContext context) async {
    TextEditingController textFolderController = TextEditingController();

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('New Folder'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 17),
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: textFolderController,
                    decoration: const InputDecoration(
                      labelText: 'Untitled folder',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            Observer(builder: (_) {
              return TextButton(
                child: const Text(
                  'Create',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {
                  String folderName = textFolderController.text;
                  if (folderName.isNotEmpty) {
                    Navigator.of(context).pop();
                    vmOhs.ohsfoldercreationviewmodelfunction(folderName, 1);
                  } else {}
                },
              );
            }),
          ],
        );
      },
    );
  }

  Future<void> _showMyDialog(BuildContext context) async {
    TextEditingController textFieldController1 = TextEditingController();
    TextEditingController textFieldController2 = TextEditingController();
    TextEditingController textFieldController3 = TextEditingController();
    TextEditingController textFieldController4 = TextEditingController();

    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: textFieldController1,
                    decoration: const InputDecoration(
                      labelText: 'Title',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: TextField(
                    controller: textFieldController2,
                    decoration: const InputDecoration(
                      labelText: 'Description',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: textFieldController3,
                    decoration: InputDecoration(
                      labelText: 'Add Member',
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      suffixIcon: DropdownButton(
                        onChanged: (String? value) {},
                        items: const <DropdownMenuItem<String>>[
                          DropdownMenuItem<String>(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 17),
                SizedBox(
                  height: 30,
                  child: TextField(
                    controller: textFieldController4,
                    decoration: const InputDecoration(
                      labelText: 'Add File+',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(
                              10))), // Add border to the text field
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text(
                'OK',
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildCard(String folderName, BuildContext context, int id) {
    TextEditingController textFolderController = TextEditingController();
    return GestureDetector(
      onTap: () {
        print('dddddd');
        intranetclickfunction(context, id);
      },
      child: Container(
        height: 57,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Icon(Icons.folder, color: Colors.black26),
                ),
                Expanded(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        folderName,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            TextEditingController textFolderController2 =
                                TextEditingController();
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Rename'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        const SizedBox(height: 17),
                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            controller: textFolderController2,
                                            decoration: const InputDecoration(
                                              labelText: 'Untitled folder',
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(10))),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: const Text(
                                        'Cancel',
                                        style: TextStyle(color: Colors.black),
                                      ),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                    Observer(builder: (_) {
                                      return TextButton(
                                        child: const Text(
                                          'Rename',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                        onPressed: () {
                                          print('sss');

                                          String folderName =
                                              textFolderController2.text;
                                          print(folderName);
                                          if (folderName.isNotEmpty) {
                                            print('iiiiii');
                                            // Navigator.of(context).pop();
                                            vmOhs.folderrenameviewmodelfunction(
                                                folderName, id);
                                            print('api');
                                          } else {}
                                          Navigator.of(context).pop();
                                        },
                                      );
                                    }),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Icon(Icons.edit, color: Colors.black26),
                        ),
                        GestureDetector(
                          onTap: () {
                            // customPrint(content: id);
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  title: const Text("Delete"),
                                  content: const Text("Are you sure"),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        vmOhs.folderdeleteviewmodelfunction(
                                            'folders', id, 1);
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        "Delete",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child:
                              const Icon(Icons.delete, color: Colors.black26),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void intranetclickfunction(BuildContext context, id) {
    vmIntranet.intranetfolderinsidefunction(id);
    context.router.push(IntranetInsideRoute(parentId: id));
  }
}
