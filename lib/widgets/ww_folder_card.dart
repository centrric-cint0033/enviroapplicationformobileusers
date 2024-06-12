import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/widgets/common_icon_btn_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

enum FolderEditCreate { create, edit }

class WWFolderCard extends StatelessWidget {
  final FolderModel folder;
  final Function() onTap;
  final Function(String value) editTap;
  final Function() deleteTap;
  final String? folderName;
  final bool? loading;

  const WWFolderCard({
    super.key,
    required this.folder,
    required this.editTap,
    required this.deleteTap,
    required this.onTap,
    this.folderName,
    this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.grey.shade200,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: ListTile(
          contentPadding: const EdgeInsets.only(left: 20),
          leading: const Icon(Icons.folder, color: Colors.black54),
          title: Row(
            children: [
              Expanded(
                child: Text(folder.name ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.bodySmall),
              ),
              loading == true
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
            ],
          ),
          trailing: SizedBox(
            width: 80.w,
            child: Row(
              children: [   
                CommonIconBtnWidget(
                  icon: Icons.edit,
                  onTap: () => showCreateEditDialog(context,
                      createEditTap: editTap,
                      folderName: folderName,
                      status: FolderEditCreate.edit),
                ),
                CommonIconBtnWidget(
                  icon: Icons.delete_forever,
                  onTap: () => showDeleteDialog(context, deleteTap: deleteTap),
                ),
              ],
            ),
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
                Navigator.of(context).pop();
              },
              child: const Text(
                "Cancel",
                style: TextStyle(color: Colors.black),
              ),
            ),
            TextButton(
              onPressed: () {
                deleteTap();
                Navigator.of(context).pop();
              },
              child:
                  const Text("Delete", style: TextStyle(color: Colors.black)),
            ),
          ],
        );
      },
    );
  }
}

void showCreateEditDialog(BuildContext context,
    {required Function(String value) createEditTap,
    String? folderName,
    FolderEditCreate status = FolderEditCreate.create}) {
  TextEditingController controller = TextEditingController(text: folderName);

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: status == FolderEditCreate.create
            ? const Text('New Folder')
            : const Text('Rename'),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 17),
            WWTextField(
              controller: controller,
              hintText: 'Untitled folder',
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel', style: TextStyle(color: Colors.black)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
              child: Text(
                status == FolderEditCreate.create ? 'Create' : 'Rename',
                style: const TextStyle(color: Colors.black),
              ),
              onPressed: () {
                createEditTap(controller.text);
                Navigator.of(context).pop();
              })
        ],
      );
    },
  );
}
