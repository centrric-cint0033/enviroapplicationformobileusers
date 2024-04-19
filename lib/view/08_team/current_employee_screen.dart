import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/current_employeelist_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CurrentEmployeeScreen extends StatelessWidget {
  const CurrentEmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      sized0hx10,
      WWSearchField(
        controller: vmTeam.currentEmployeeSearchCntrlr,
        onChanged: (v) => vmTeam.onTextChanged(() => v.isEmpty
            ? vmTeam.getCurrentEmployee()
            : vmTeam.currentEmployeeSearchApi(v)),
        searchTap: () {},
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
