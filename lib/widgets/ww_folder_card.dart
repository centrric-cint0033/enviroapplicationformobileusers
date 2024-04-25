import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/widgets/common_icon_btn_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWFolderCard extends StatelessWidget {
  final FolderModel folder;
  final Function(String value) editTap;
  final Function() deleteTap;

  const WWFolderCard({
    super.key,
    required this.folder,
    required this.editTap,
    required this.deleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 20),
        leading: const Icon(
          Icons.folder,
          color: Colors.black54,
        ),
        title: Text(
          folder.name ?? "",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: SizedBox(
          width: 80.w,
          child: Row(
            children: [
              CommonIconBtnWidget(
                icon: Icons.edit,
                onTap: () => showEditDialog(context, editTap: editTap),
              ),
              CommonIconBtnWidget(
                icon: Icons.delete_forever,
                onTap: () => showDeleteDialog(context, deleteTap: deleteTap),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showDeleteDialog(BuildContext context, {required Function() deleteTap}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          title: const Text("Delete"),
          content: const Text("Are you sure"),
          actions: [
            TextButton(
              onPressed: () {
                deleteTap();
                Navigator.of(context).pop();
              },

              // () {
              //   vmOhs.folderdeleteviewmodelfunction('folders', id, 1);
              //   Navigator.of(context).pop();
              // },
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
  }

  void showEditDialog(BuildContext context,
      {required Function(String value) editTap}) {
    TextEditingController controller = TextEditingController();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Rename'),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(height: 17),

              WWTextField(
                controller: controller,
                hintText: 'Untitled folder',
              ),

              // SizedBox(
              //   height: 30,
              //   child: TextField(
              //     // controller: textFolderController2,
              //     decoration: const InputDecoration(
              //       labelText: 'Untitled folder',
              //       border: OutlineInputBorder(
              //           borderRadius: BorderRadius.all(Radius.circular(10))),
              //     ),
              //   ),
              // ),
            ],
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
                  editTap(controller.text);
                  Navigator.of(context).pop();
                }

                // () {
                //   // String folderName = textFolderController2.text;
                //   if (folderName.isNotEmpty) {
                //     vmOhs.ohsFolerRenameApi(folderName, id);
                //   } else {}
                //   Navigator.of(context).pop();
                // },
                )
          ],
        );
      },
    );
  }
}
