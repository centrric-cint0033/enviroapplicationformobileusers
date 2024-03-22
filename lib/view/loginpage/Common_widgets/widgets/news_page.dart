import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmcustomformfield.dart';
import 'package:enviro_mobile_application/view/oh&s_detail_page/oh&s_detail_page.dart';
import 'package:enviro_mobile_application/viewmodel/folder_creation/folder_creation_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_news_folder/oh&s_news_fldr_view_model.dart';
import 'package:enviro_mobile_application/viewmodel/oh&s_page/oh&s_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../Routepage/routespage.dart';
import '../../../../model/oh&snews_folder/oh&snews_fldr_model.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        _showMyDialog(context);
                      },
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.blue),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 188, 209, 228),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        'Add New+',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Observer(
                builder: (_) {
                  return SizedBox(
                    child: ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: vmohsnews.newspageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data = vmohsnews.newspageResponse.data?[index];
                        return GestureDetector(
                          onTap: () => _handleViewButtonTap(context),
                          child: Container(
                            height: 120,
                            width: double.infinity,
                            child: GestureDetector(
                              onTap: () => ohsdetailpagefunction(context, data),
                              child: Card(
                                color: const Color.fromARGB(255, 188, 209, 228),
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 94),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        // Text(
                                        //   data?.description ?? '',
                                        // ),
                                        ListTile(
                                          title: Text(
                                            data?.title ?? '',
                                            style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          subtitle: Text(
                                            data?.created_by ?? '',
                                            style:
                                                const TextStyle(fontSize: 16),
                                          ),
                                          trailing: TextButton(
                                            onPressed: () =>
                                                _handleViewButtonTap(context),
                                            style: ButtonStyle(
                                              side: MaterialStateProperty.all<
                                                  BorderSide>(
                                                const BorderSide(
                                                    color: Colors.blue),
                                              ),
                                              backgroundColor:
                                                  MaterialStateProperty.all<
                                                      Color>(
                                                const Color.fromARGB(
                                                    255, 188, 209, 228),
                                              ),
                                              shape: MaterialStateProperty.all<
                                                  OutlinedBorder>(
                                                RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          18.0),
                                                ),
                                              ),
                                            ),
                                            child: const Text(
                                              'View',
                                              style:
                                                  TextStyle(color: Colors.blue),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              const SizedBox(height: 10),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Folders'),
                ),
                Observer(builder: (_) {
                  return TextButton(
                    onPressed: () {
                      _showMyfolderDialog(context);
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        const BorderSide(color: Colors.blue),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color.fromARGB(255, 188, 209, 228),
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    child: const Text(
                      'Add folder+',
                      style: TextStyle(color: Colors.blue),
                    ),
                  );
                }),
              ]),
              const SizedBox(height: 18),
              Container(
                height: 50,
                width: double.infinity,
                child: Cmformfield(
                  borderColor: Colors.black12,
                  cursorHeight: 15,
                  hinttext: 'Search by folder name',
                  width: double.infinity,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(35),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Observer(builder: (_) {
                return ListView.separated(
                  shrinkWrap: true,
                  itemCount: vmohsnewsfolder
                              .newspagefolderResponse.data?.folders.isEmpty ??
                          true
                      ? 0
                      : vmohsnewsfolder.newspagefolderResponse.data?.folders[0]
                              .folders.length ??
                          0,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 6.0),
                  itemBuilder: (BuildContext context, int index) {
                    var data = vmohsnewsfolder
                        .newspagefolderResponse.data?.folders[0].folders[index];

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
      ),
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
                    vmfoldercreation.ohsfoldercreationviewmodelfunction(
                        folderName, 1);
                  } else {}
                },
              );
            }),
          ],
        );
      },
    );
  }

  Widget _buildCard(String folderName, BuildContext context, int id) {
    return GestureDetector(
      onTap: () {
        print('cdvfsdg $id');
        newsfolderclickfunction(context, id);
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
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Rename'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  content: const SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        SizedBox(height: 17),
                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            decoration: InputDecoration(
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
                                    TextButton(
                                      child: const Text(
                                        'Rename',
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
                          },
                          child: const Icon(Icons.edit, color: Colors.black26),
                        ),
                        GestureDetector(
                          onTap: () {
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
                                        // Your delete logic here
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

  void _handlegeneralButtonTap(BuildContext context) {
    print('Add New button tapped!');
  }

  void _handleViewButtonTap(BuildContext context) {
    print('View button tapped!');
  }

  void _handleButtonTap() {
    print('Add Folder button tapped!');
  }

  void newsfolderclickfunction(BuildContext context, int id) async {
    vmohsnewsfolder.newspagefolderinsidefunction(id);
    context.router.pushNamed(RouteNames.newsfolderinsidepage);
  }

  void ohsdetailpagefunction(BuildContext context, data) {
    context.router.push(OhsDetailRoute(data: data));
  }
}
