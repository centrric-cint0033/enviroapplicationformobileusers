import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_tabs_screen/02_ohs_notification_tab.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_add_notification_dialog.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  @override
  Widget build(BuildContext context) {
    vmTeam.getAllEmployee();
    // WidgetsBinding.instance.addPostFrameCallback(
    //   (timeStamp) {
    //     vmOhs.notificationPagination();
    //   },
    // );
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(title: cmnTitleWidget('Notifications'), actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_active_rounded))
      ]),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: Align(
              alignment: Alignment.topRight,
              child: CmButton(
                width: 100.w,
                onPressed: () {
                  vmTeam.selectedMember = null;
                  vmOhs.selectedFileNameNotification = null;
                  showMyDialogNotification(context);
                },
                text: 'Add New +',
                color: Appthemes.cPrimary,
                buttonTextStyle: TextStyle(
                  color: Appthemes.cWhite,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
          sized0hx10,
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              child: Observer(
                builder: (_) {
                  final res = vmOhs.notificationpageResponse;
                  return WWResponseHandler(
                    data: res,
                    isEmpty: res.data?.isEmpty ?? true,
                    onTap: () => vmOhs.ohsNotificationApi(),
                    child: NotificationTabList(
                      loading: res.loading,
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
