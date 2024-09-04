import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/01_team_widgets.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CurrentEmployeeTab extends StatelessWidget {
  const CurrentEmployeeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        vmTeam.currentEmployeePagination();
      },
    );
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
        final res = vmTeam.currentEmployeeResponse;
        List<TeamResModel> currentEmployees = res.data?.toList() ?? [];
        return Expanded(
            child: WWResponseHandler(
                data: res,
                isEmpty: res.data?.isEmpty ?? true,
                onTap: () => vmTeam.getCurrentEmployee(),
                child: CurrentEmployeeListWidget(
                  loading: res.loading,
                  currentEmployees: currentEmployees,
                )));
      }),
    ]));
  }
}

class CurrentEmployeeListWidget extends StatelessWidget {
  const CurrentEmployeeListWidget({
    super.key,
    required this.loading,
    required this.currentEmployees,
  });
  final bool loading;
  final List<TeamResModel> currentEmployees;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: currentEmployees.length + 1,
        controller: vmTeam.currentEmployeeController,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        itemBuilder: (context, index) {
          return index == currentEmployees.length
              ? vmTeam.currentEmployeeResponse.paginationLoading
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
              : listTile(context, data: currentEmployees[index], onTap: () {
                  vmTeam.getTeamProfileEmployeeDetails(
                      employeeID: currentEmployees[index].id ?? 0);
                  vmTeam.getTeamFolders(
                      id: currentEmployees[index].id ?? 0, parentFolderId: 1);
                  context.router
                      .push(TeamProfileRoute(id: currentEmployees[index].id));
                });
        });
  }
}
