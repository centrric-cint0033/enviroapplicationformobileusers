import 'package:auto_route/annotations.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_tabs_screen/02_ohs_notification_tab.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class ArchiveNotificationPage extends StatelessWidget {
  const ArchiveNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) {
    //     vmTeam.currentEmployeePagination();
    //   },
    // );
    return Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Archive'),
        ),
        body: Padding(
          padding: screenWidth,
          child: Column(children: [
            sized0hx10,
            Observer(builder: (_) {
              final res = vmOhs.archiveNotificationResponse;
              return Expanded(
                  child: WWResponseHandler(
                      data: res,
                      isEmpty: res.data?.isEmpty ?? true,
                      onTap: () => vmOhs.ohsArchiveNotificationApi(),
                      child: ArchiveNotificationList(loading: res.loading)));
            }),
          ]),
        ));
  }
}

class ArchiveNotificationList extends StatelessWidget {
  const ArchiveNotificationList({super.key, required this.loading});
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmOhs.archiveNotificationResponse.data!.length + 1,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) {
          return index == vmOhs.archiveNotificationResponse.data?.length
              ? vmOhs.archiveNotificationResponse.paginationLoading
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
              : InkWell(
                  onTap: () => notificationdetailpagefunction(context,
                      vmOhs.archiveNotificationResponse.data?[index], index,
                      fromArchive: true),
                  child: WWcard(
                      data: vmOhs.archiveNotificationResponse.data?[index]),
                );
        });
  }
}
