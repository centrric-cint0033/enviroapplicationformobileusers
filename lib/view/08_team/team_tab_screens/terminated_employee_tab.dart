import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/01_team_widgets.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TerminatedEmployeeTab extends StatelessWidget {
  const TerminatedEmployeeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        vmTeam.terminatedEmployeePagination();
      },
    );
    return Scaffold(
        body: Column(children: [
      gapField,
      WWTextField(
        controller: vmTeam.terminatedEmployeeSearchCntrlr,
        onChanged: (v) => vmTeam.onTextChanged(() => v.isEmpty
            ? vmTeam.getTerminatedEmployee()
            : vmTeam.terminatedEmployeeSearchApi(v)),
        suffixTap: () {},
        hintText: 'Search Employee',
      ),
      gapField,
      Observer(builder: (_) {
        final res = vmTeam.terminatedEmployeeResponse;
        return Expanded(
            child: WWResponseHandler(
                data: res,
                isEmpty:
                    vmTeam.terminatedEmployeeResponse.data?.isEmpty ?? true,
                onTap: () => vmTeam.getTerminatedEmployee(),
                child: TerminatedEmployeeListWidget(loading: res.loading)));
      }),
    ]));
  }
}

class TerminatedEmployeeListWidget extends StatelessWidget {
  const TerminatedEmployeeListWidget({super.key, required this.loading});
  final bool loading;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmTeam.terminatedEmployeeResponse.data!.length + 1,
        separatorBuilder: (BuildContext context, int index) => sized0hx10,
        controller: vmTeam.terminatedEmployeeController,
        itemBuilder: (context, index) {
          return index == vmTeam.terminatedEmployeeResponse.data?.length
              ? loading
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
              : listTile(context,
                  data: vmTeam.terminatedEmployeeResponse.data?[index],
                  onTap: () {
                  vmTeam.getTeamProfileEmployeeDetails(
                      employeeID:
                          vmTeam.terminatedEmployeeResponse.data?[index].id ??
                              0);
                  vmTeam.getTeamFolders(
                      id: vmTeam.terminatedEmployeeResponse.data?[index].id ??
                          0,
                      parentFolderId: 1);
                  context.router.push(TeamProfileRoute(
                      id: vmTeam.terminatedEmployeeResponse.data?[index].id));
                });
        });
  }
}
