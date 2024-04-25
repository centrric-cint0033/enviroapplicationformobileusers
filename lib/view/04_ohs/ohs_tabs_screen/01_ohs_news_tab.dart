import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class NewsOhsTab extends StatelessWidget {
  const NewsOhsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          gapFieldOhs,
          Align(
              alignment: Alignment.topLeft,
              child: CmButton(
                  text: 'Add New+', onPressed: () => _showMyDialog(context))),
          gapFieldOhs,
          Observer(builder: (_) {
            return SizedBox(
                child: WWResponseHandler(
                    data: vmOhs.newspageResponse,
                    isEmpty: vmOhs.newspageResponse.data?.isEmpty ?? true,
                    onTap: () => vmOhs.ohsNewsApi(),
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: vmOhs.newspageResponse.data?.length ?? 0,
                        separatorBuilder: (BuildContext context, int index) =>
                            gapFieldOhs,
                        itemBuilder: (context, index) {
                          var data = vmOhs.newspageResponse.data?[index];
                          return InkWell(
                              onTap: () => _handleViewButtonTap(context),
                              child: WWcard(data: data));
                        })));
          }),
          gapFieldOhs,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                  padding: EdgeInsets.all(8.0), child: Text('Folders')),
              CmButton(
                  text: 'Add folders+',
                  onPressed: () => _showMyDialog(context)),
            ],
          ),
          gapFieldOhs,
          WWTextField(
            controller: TextEditingController(),
            hintText: 'Search by folder name',
          ),
          const SizedBox(height: 16),
          Observer(builder: (_) {
            return ListView.separated(
              shrinkWrap: true,
              itemCount:
                  vmOhs.newspagefolderResponse.data?.folders?.isEmpty ?? true
                      ? 0
                      : vmOhs.newspagefolderResponse.data?.folders![0].folders
                              ?.length ??
                          0,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (BuildContext context, int index) => sized0hx05,
              itemBuilder: (BuildContext context, int index) {
                FolderModel? data = vmOhs
                    .newspagefolderResponse.data?.folders![0].folders![index];
                return WWFolderCard(
                    folder: data!,
                    editTap: (s) {
                      vmOhs.ohsFolerRenameApi(context, s, data.id!);
                    },
                    deleteTap: () {
                      vmOhs.folderdeleteviewmodelfunction(
                          'folders', data.id!, 1);
                    });
              },
            );
          }),
        ],
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

  void _handlegeneralButtonTap(BuildContext context) {
    print('Add New button tapped!');
  }

  void _handleViewButtonTap(BuildContext context) {
    print('View button tapped!');
  }

  void _handleButtonTap() {
    print('Add Folder button tapped!');
  }

  void newsfolderclickfunction(BuildContext context, id) async {
    vmOhs.newspagefolderinsidefunction(id);

    context.router.push(NewsOhsFolderInsideRoute(parentId: id));
  }

  void ohsdetailpagefunction(BuildContext context, data) {
    context.router.push(OhsDetailRoute(data: data));
  }
}
