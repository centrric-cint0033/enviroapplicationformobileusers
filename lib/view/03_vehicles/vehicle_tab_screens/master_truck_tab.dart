import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';

class MasterTruckTab extends StatelessWidget {
  const MasterTruckTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      WWSearchField(
        controller: vmVehicle.vehSemiTrailorCtr,
        onChanged: (v) => vmVehicle.onTextChanged(() {
          if (v.isEmpty) {
            vmVehicle.truckPageFunction();
          } else {
            // vmVehicle.fueltrucksearchfunction(
            //   value: v,
            //   searchtrucksemidrop: actionType,
            // );
          }
        }),
        searchTap: () {},
      ),
      gapFieldVeh,
      Observer(builder: (_) {
        return Expanded(
            child: WWResponseHandler(
                data: vmVehicle.truckPageResponse,
                isEmpty: vmVehicle.truckPageResponse.data?.isEmpty ?? true,
                onTap: () => vmVehicle.vehSemiTrailorCtr.text.isNotEmpty
                    ? vmVehicle.semifueltrucksearchfunction()
                    : vmVehicle.trailorfunction(),
                child: const MasterTruckList()));
      }),
    ]));
  }
}

class MasterTruckList extends StatelessWidget {
  const MasterTruckList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: vmVehicle.truckPageResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
      itemBuilder: (context, index) => showData(
          data: vmVehicle.truckPageResponse.data?[index],
          status: vmVehicle.vehicleStatusType),
    );
  }
}
