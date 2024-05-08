import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/01_team_widgets.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CurrentEmployeeTab extends StatelessWidget {
  const CurrentEmployeeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      sized0hx10,
      WWTextField(
        controller: vmTeam.currentEmployeeSearchCntrlr,
        onChanged: (v) => vmTeam.onTextChanged(() => v.isEmpty
            ? vmTeam.getCurrentEmployee()
            : vmTeam.currentEmployeeSearchApi(v)),
        suffixTap: () {},
        hintText: 'Search Employee',
      ),
      sized0hx10,
      Observer(builder: (_) {
        return Expanded(
            child: WWResponseHandler(
                data: vmTeam.currentEmployeeResponse,
                isEmpty: vmTeam.currentEmployeeResponse.data?.isEmpty ?? true,
                onTap: () => vmTeam.getCurrentEmployee(),
                child: const CurrentEmployeeListWidget()));
      }),
    ]));
  }
}

class CurrentEmployeeListWidget extends StatelessWidget {
  const CurrentEmployeeListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmTeam.currentEmployeeResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: listTile(context,
                  data: vmTeam.currentEmployeeResponse.data?[index], onTap: () {
                vmTeam.getTeamProfileEmployeeDetails(
                    employeeID:
                        vmTeam.currentEmployeeResponse.data?[index].id ?? 0);
                vmTeam.getTeamFolders(
                    id: vmTeam.currentEmployeeResponse.data?[index].id ?? 0);
                context.router.push(const TeamProfileRoute());
              }),
            ));
  }
}
