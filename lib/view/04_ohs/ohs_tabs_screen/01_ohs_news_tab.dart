import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_add_notification_dialog.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NewsOhsTab extends StatelessWidget {
  const NewsOhsTab({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        children: [
          sized0hx05,
          Align(
              alignment: Alignment.topLeft,
              child: Observer(builder: (context) {
                return CmButton(
                    height: 35.w,
                    text: 'Add New+',
                    onPressed: () {
                      showMyDialogNotification(context,
                          fromOhsNews: true, fromOhsEditNews: false);
                    });
              })),
          sized0hx05,
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
                            sized0hx05,
                        itemBuilder: (context, index) {
                          var data = vmOhs.newspageResponse.data?[index];
                          return InkWell(
                              onTap: () {
                                context.router.push(OhsDetailRoute(
                                    data: vmOhs.newspageResponse.data![index],
                                    index: index));
                              },
                              child: WWcard(data: data));
                        })));
          }),
          sized0hx05,
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Folders'),
            ),
            CmButton(
                height: 35.w,
                text: 'Add folders+',
                onPressed: () {
                  showCreateEditDialog(context, createEditTap: (v) {
                    vmOhs.addFolderOhs(
                        context: context, name: v, parentfolder: 1);
                  });
                }),
          ]),
          sized0hx10,
          sized0hx10,
          WWTextField(
            controller: vmOhs.folderSearchCntrlr,
            onChanged: (v) => vmTeam.onTextChanged(() {
              v.isEmpty
                  ? vmOhs.getFoldersOhs(parentFolderId: 1)
                  : vmOhs.folderSearchOhsApi(
                      v,
                      1,
                      vmOhs.searchType ?? "general",
                    );
            }),
            suffixTap: () {},
            hintText: 'Search by Folder Name',
          ),
          sized0hx10,
          Observer(builder: (context) {
            final res = vmOhs.ohsFoldersResponse;
            FolderListModel? folderList = res.data;
            return res.loading
                ? wwCustomLoader()
                : folderList?.folders != null && folderList!.folders!.isNotEmpty
                    ? ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) =>
                            sized0hx10,
                        itemCount: folderList.folders?[0].folders?.length ?? 0,
                        itemBuilder: (context, index) {
                          var data = folderList.folders?[0].folders?[index];
                          if (data != null) {
                            return WWFolderCard(
                                folder: data,
                                onTap: () {
                                  vmOhs.folderNames.clear();
                                  vmOhs.getFoldersOhs(
                                    parentFolderId: data.id ?? 0,
                                  );
                                  vmOhs.parentFolderId = data.id;
                                  vmOhs.folderNames.add("${data.name}");
                                  context.router.push(OhsFolderDetailRoute(
                                      folderName: data.name,
                                      searchType: data.type));
                                },
                                folderName: data.name,
                                editTap: (s) {
                                  vmOhs.editFolderOhsApi(
                                    name: s,
                                    folderId: data.id ?? 0,
                                    parentFolderId: vmOhs.parentFolderId ?? 1,
                                    context: context,
                                  );
                                },
                                deleteTap: () {
                                  vmOhs.ohsDeleteFolderApi(
                                      folderId: data.id ?? 0,
                                      context: context,
                                      parentFolderId:
                                          vmOhs.parentFolderId ?? 1);
                                });
                          } else {
                            return Container();
                          }
                        },
                      )
                    : Center(
                        child: SvgPicture.asset(
                          "assets/images/empty1.svg",
                        ),
                      );
          }),
          sized0hx30
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

  void ohsdetailpagefunction(BuildContext context, data, int index) {
    context.router.push(OhsDetailRoute(data: data, index: index));
  }
}
