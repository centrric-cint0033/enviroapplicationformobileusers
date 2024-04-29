import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/07_intranet/intraner_widgets/intranet_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class IntranetPage extends StatelessWidget {
  const IntranetPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
          title: cmnTitleWidget('Intranet'),
          actions: [notificationButton(context)]),
      body: Padding(
        padding: screenWidth,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                showBlackText('Folder'),
                CmButton(
                    text: 'Add folders+',
                    onPressed: () => _showMyfolderDialog(context)),
              ],
            ),
            gapFieldIntra,
            WWTextField(
                controller: TextEditingController(),
                hintText: 'Search by folder name'),
            gapFieldIntra,
            Observer(builder: (_) {
              return WWResponseHandler(
                  data: vmIntranet.intranetpageResponse,
                  isEmpty:
                      vmIntranet.intranetpageResponse.data?.folders?.isEmpty,
                  onTap: () {},
                  child: const IntrapageStateless());
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
}

class IntrapageStateless extends StatelessWidget {
  const IntrapageStateless({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    void intranetclickfunction(BuildContext context, id) {
      vmIntranet.intranetfolderinsidefunction(id);
      context.router.push(IntranetInsideRoute(parentId: id));
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount: vmIntranet.intranetpageResponse.data?.folders?.isEmpty ?? true
          ? 0
          : vmIntranet.intranetpageResponse.data?.folders![0].folders?.length ??
              0,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => gapFieldIntra,
      itemBuilder: (BuildContext context, int index) {
        var data =
            vmIntranet.intranetpageResponse.data?.folders![0].folders![index];
        return WWFolderCard(
            folder: data!,
            onTap: () => intranetclickfunction(context, data.id!),
            editTap: (s) => vmOhs.ohsFolerRenameApi(context, s, data.id!),
            deleteTap: () =>
                vmOhs.folderdeleteviewmodelfunction('folders', data.id!, 1));
      },
    );
  }
}
