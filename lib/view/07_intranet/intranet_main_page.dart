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
class IntranetMainPage extends StatelessWidget {
  const IntranetMainPage({Key? key});

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
                    onPressed: () => showCreateEditDialog(context,
                        createEditTap: (v) =>
                            vmOhs.ohsfoldercreationviewmodelfunction(v, 1))),
              ],
            ),
            gapFieldIntra,
            WWTextField(
                controller: TextEditingController(),
                hintText: 'Search by folder name'),
            gapFieldIntra,
            Expanded(
              child: Observer(builder: (_) {
                var response = vmIntranet.intranetpageResponse;
                var data = response.data;
                bool isEmpty = (data?.folders?.isEmpty ?? true)
                    ? true
                    : data?.folders![0].folders?.isEmpty ?? true;
                return WWResponseHandler(
                    data: response,
                    isEmpty: isEmpty,
                    onTap: () => vmIntranet.intranetviewmodelfunction(1),
                    child: const IntrapageStateless());
              }),
            ),
          ],
        ),
      ),
    );
  }
}

class IntrapageStateless extends StatelessWidget {
  const IntrapageStateless({super.key});

  @override
  Widget build(BuildContext context) {
    void intranetclickfunction(BuildContext context, int id, String name) {
      vmIntranet.intranetfolderinsidefunction(id);
      context.router.push(IntranetInsideRoute(parentId: id, folderName: name));
    }

    return ListView.separated(
      shrinkWrap: true,
      itemCount:
          vmIntranet.intranetpageResponse.data!.folders![0].folders!.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) => gapFieldIntra,
      itemBuilder: (BuildContext context, int index) {
        var data =
            vmIntranet.intranetpageResponse.data?.folders![0].folders![index];
        return WWFolderCard(
            folder: data!,
            onTap: () => intranetclickfunction(context, data.id!, data.name!),
            editTap: (s) => vmOhs.ohsFolerRenameApi(context, s, data.id!),
            deleteTap: () =>
                vmOhs.folderdeleteviewmodelfunction('folders', data.id!, 1));
      },
    );
  }
}
