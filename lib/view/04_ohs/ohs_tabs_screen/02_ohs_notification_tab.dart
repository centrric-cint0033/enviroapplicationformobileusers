import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_add_notification_dialog.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void _handleRightButtonTap() {
  customPrint(name: 'Right button tapped!', content: null);
}

class NotificationTab extends StatelessWidget {
  const NotificationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        gapFieldOhs,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CmButton(
                text: 'Add New+',
                onPressed: () => showMyDialognotification(context)),
            const CmButton(text: 'Archive', onPressed: _handleRightButtonTap),
          ],
        ),
        gapFieldOhs,
        Observer(builder: (_) {
          final res = vmOhs.notificationpageResponse;
          return Expanded(
              child: WWResponseHandler(
                  data: res,
                  isEmpty: res.data?.isEmpty ?? true,
                  onTap: () => vmOhs.ohsNotificationApi(),
                  child: NotificationTabList(
                    loading: res.loading,
                  )));
        }),
      ],
    );
  }
}

class NotificationTabList extends StatelessWidget {
  const NotificationTabList({super.key, required this.loading});
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      controller: vmOhs.notificationController,
      itemCount: vmOhs.notificationpageResponse.data!.length + 1,
      separatorBuilder: (BuildContext context, int index) => gapFieldOhs,
      itemBuilder: (context, index) {
        return index == vmOhs.notificationpageResponse.data?.length
            ? vmOhs.notificationpageResponse.paginationLoading
                ? const CupertinoActivityIndicator()
                : const SizedBox.shrink()
            : InkWell(
                onTap: () => notificationdetailpagefunction(
                    context, vmOhs.notificationpageResponse.data?[index]),
                child:
                    WWcard(data: vmOhs.notificationpageResponse.data?[index]),
              );
      },
    );
  }
}

void notificationdetailpagefunction(BuildContext context, data) {
  context.router.pushNamed(RouteNames.rNotificationdetailpage);
  context.router.push(NotificationDetailRoute(data: data));
}
