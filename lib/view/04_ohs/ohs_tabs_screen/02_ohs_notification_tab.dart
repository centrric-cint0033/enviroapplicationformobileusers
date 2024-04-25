import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                onPressed: () => _showMyDialognotification(context)),
            const CmButton(text: 'Archive', onPressed: _handleRightButtonTap),
          ],
        ),
        gapFieldOhs,
        Observer(builder: (_) {
          return Expanded(
              child: WWResponseHandler(
                  data: vmOhs.notificationpageResponse,
                  isEmpty: vmOhs.notificationpageResponse.data?.isEmpty,
                  onTap: () => vmOhs.ohsNotificationApi(),
                  child: const NotificationTabList()));
        }),
      ],
    );
  }
}

class NotificationTabList extends StatelessWidget {
  const NotificationTabList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: vmOhs.notificationpageResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => gapFieldOhs,
      itemBuilder: (context, index) {
        var data = vmOhs.notificationpageResponse.data?[index];
        return InkWell(
          onTap: () => notificationdetailpagefunction(context, data),
          child: WWcard(data: data),
        );
      },
    );
  }
}

Future<void> _showMyDialognotification(BuildContext context) async {
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
              WWTextField(
                controller: textFieldController1,
                hintText: 'Title',
              ),
              gapFieldOhs,
              WWTextField(
                controller: textFieldController1,
                hintText: 'Title',
              ),
              gapFieldOhs,
              SizedBox(
                height: 100,
                child: WWTextField(
                  controller: textFieldController2,
                  hintText: 'Description',
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              gapFieldOhs,
              WWTextField(
                controller: textFieldController3,
                hintText: 'Add Member',
                suffixIcon: Icons.arrow_drop_down_outlined,
                suffixTap: () {
                  DropdownButton(
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
                  );
                },
              ),
              gapFieldOhs,
              gapFieldOhs,
              WWTextField(
                controller: textFieldController4,
                hintText: 'Add File+',
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

void notificationdetailpagefunction(BuildContext context, data) {
  context.router.pushNamed(RouteNames.rNotificationdetailpage);
  context.router.push(NotificationDetailRoute(data: data));
}
