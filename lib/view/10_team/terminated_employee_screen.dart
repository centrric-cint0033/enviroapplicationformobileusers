import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/terminated_employeelist_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class TerminatedEmployeeScreen extends StatelessWidget {
  const TerminatedEmployeeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      gapField,
      WWSearchField(
        controller: vmSales.salesJobListSearchCtr,
        onChanged: (v) => vmSales.onTextChanged(() => v.isEmpty
            ? vmSales.saleJobListApi()
            : vmSales.salesJobListSearchApi(v)),
        searchTap: () {},
        hintText: 'Search Employee',
      ),
      gapField,
      Observer(builder: (_) {
        return Expanded(
            child: WWResponseHandler(
                data: vmTeam.terminatedEmployeeResponse,
                isEmpty:
                    vmTeam.terminatedEmployeeResponse.data?.isEmpty ?? true,
                onTap: () => vmTeam.getTerminatedEmployee(),
                child: const TerminatedEmployeeListWidget()));
      }),
    ]));
  }
}
