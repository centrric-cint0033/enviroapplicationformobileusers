import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MasterCarTab extends StatelessWidget {
  const MasterCarTab({Key? key}) : super(key: key);

  _onChanged(String v) => vmVehicle.onTextChanged(() {
        v.isEmpty
            ? vmVehicle.mastercarfunction()
            : vmVehicle.fuelsearchfunction();
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      WWSearchField(
        controller: vmVehicle.vehSemiTrailorCtr,
        onChanged: _onChanged,
        searchTap: () {},
      ),
      gapFieldVeh,
      Observer(builder: (_) {
        return Expanded(
            child: WWResponseHandler(
                data: vmVehicle.carPageResponse,
                isEmpty: vmVehicle.carPageResponse.data?.isEmpty ?? true,
                onTap: () => vmVehicle.vehSemiTrailorCtr.text.isNotEmpty
                    ? vmVehicle.semifueltrucksearchfunction()
                    : vmVehicle.trailorfunction(),
                child: const MasterCarList()));
      })
    ]));
  }
}

class MasterCarList extends StatelessWidget {
  const MasterCarList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: vmVehicle.carPageResponse.data?.length ?? 0,
        separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
        itemBuilder: (context, index) {
          var data = vmVehicle.carPageResponse.data?[index];
          return showData(data: data);
        });
  }
}
