import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/custom_container_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentEmployeeListWidget extends StatelessWidget {
  const CurrentEmployeeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmTeam.currentEmployeeResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: listTile(
                vmTeam.currentEmployeeResponse.data?[index],
                context,
              ),
            ));
  }

  Widget listTile(
    TeamResModel? data,
    BuildContext context,
  ) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(12),
      ),
      child: InkWell(
        onTap: () {
          vmTeam.getTeamProfileEmployeeDetails(employeeID: data?.id ?? 0);
          vmTeam.getTeamFolders(id: data?.id ?? 0);
          context.router.push(const TeamProfileRoute());
        },
        child: Container(
          height: 50.h,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Center(
            child: ListTile(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(32),
                        bottomRight: Radius.circular(32))),
                leading: dpImage(data?.dpThumbnail ?? data?.dp ?? ""),
                title: Text(data?.name ?? ""),
                trailing: customContainerWidget(Appthemes.cPrimary, "View")),
          ),
        ),
      ),
    );
  }
}
