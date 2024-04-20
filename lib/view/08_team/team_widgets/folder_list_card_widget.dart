import 'package:enviro_mobile_application/model/10_team/team_folder_resp_model/folder.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildCard(BuildContext context,
    {required Folder data, required num id}) {
  return GestureDetector(
    onTap: () {},
    child: SizedBox(
      height: 57.h,
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
                      data.name ?? "",
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
                                content: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      const SizedBox(height: 17),
                                      SizedBox(
                                        height: 30,
                                        child: TextField(
                                          controller:
                                              vmTeam.textFolderEditController,
                                          decoration: const InputDecoration(
                                            labelText: 'Untitled folder',
                                            border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
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
                                    vmTeam.textFolderEditController.text =
                                        data.name ?? "";
                                    return TextButton(
                                      child: const Text(
                                        'Rename',
                                      ),
                                      onPressed: () {
                                        String folderName = vmTeam
                                            .textFolderEditController.text;
                                        if (folderName.isNotEmpty) {
                                          vmTeam.editTeamFolderApi(
                                              name: folderName,
                                              folder: data,
                                              context: context,
                                              employeeID: id);
                                        } else {}
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
                                      vmTeam.deleteTeamFolderApi(
                                          folder: data,
                                          context: context,
                                          employeeID: id);
                                    },
                                    child: const Text(
                                      "Delete",
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
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
                        child: const Icon(Icons.delete, color: Colors.black26),
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
