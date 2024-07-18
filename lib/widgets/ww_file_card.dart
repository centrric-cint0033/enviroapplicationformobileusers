import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/common_icon_btn_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class WWFileCard extends StatelessWidget {
  final FolderModel file;
  final Function() onTap;
  final Function(String value) editTap;
  final Function() deleteTap;
  final String? fileName;
  final bool? loading;
  final num employeeID;
  final num parentFolderId;
  final bool? fromOhs;

  const WWFileCard({
    super.key,
    required this.file,
    required this.editTap,
    required this.deleteTap,
    required this.onTap,
    this.fileName,
    this.loading,
    required this.employeeID,
    required this.parentFolderId,
    this.fromOhs = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.grey.shade200,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                contentPadding: const EdgeInsets.only(left: 20),
                leading: const Icon(Icons.file_copy, color: Colors.black54),
                title: Row(
                  children: [
                    Expanded(
                      child: Text(file.name ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall),
                    ),
                    loading == true
                        ? const CupertinoActivityIndicator()
                        : const SizedBox.shrink()
                  ],
                ),
                subtitle: Observer(builder: (context) {
                  final res = vmTeam.expiryFileResponse;
                  return Row(
                    children: [
                      Text("Expiry Date: ",
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodySmall),
                      res.loading
                          ? const CupertinoActivityIndicator()
                          : Text(file.expiry_date ?? "",
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.bodySmall),
                    ],
                  );
                }),
                // trailing: SizedBox(
                //   width: 110.w,
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     children: [

                //     ],
                //   ),
                // ),
              ),
            ),
            CommonIconBtnWidget(
              icon: Icons.edit,
              onTap: () => showCreateEditDialog(context,
                  createEditTap: editTap,
                  folderName: fileName,
                  status: FolderEditCreate.edit),
            ),
            CommonIconBtnWidget(
              icon: Icons.delete_forever,
              onTap: () => showDeleteDialog(context, deleteTap: deleteTap),
            ),
            fromOhs == true
                ? datePicker(
                    context,
                    vmOhs.selectedExpiryDate,
                    (date) => vmOhs.expiryDatePickerFn(
                        context, date, file.id ?? 1, parentFolderId))
                : datePicker(
                    context,
                    vmTeam.selectedExpiryDate,
                    (date) => vmTeam.expiryDatePickerFn(context, date,
                        file.id ?? 1, employeeID, parentFolderId))
          ],
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
