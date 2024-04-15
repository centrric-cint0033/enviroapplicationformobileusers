import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_required_text.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmCredentialsForEnviro(BuildContext context) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(children: [
        cmRow(
            Row(children: [showText("Username"), sized0wx05, cmRequiredText()]),
            cmTextField(
                readOnly: true,
                showDecoration: true,
                controller: vmTeam.textAddTeamEmailController)),
        cmRow(
            Row(children: [showText("Password"), sized0wx05, cmRequiredText()]),
            cmTextField(showDecoration: true))
      ]),
    ),
  );
}

Widget cmRow(Widget widget1, Widget widget2) {
  return Row(
    children: [Expanded(child: widget1), Expanded(flex: 2, child: widget2)],
  );
}
