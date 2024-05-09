import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';

class MasterTruckTab extends StatelessWidget {
  const MasterTruckTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    _onChanged(String s) => vmVehicle.onTextChanged(() => (s.isEmpty)
        ? vmVehicle.masterTruckApi()
        : vmVehicle.masterTruckSearchServiceApi(s));

    return Scaffold(
        body: Column(children: [
      WWTextField(
        controller: vmVehicle.vehicleTextCtr,
        onChanged: _onChanged,
        suffixTap: () {},
      ),
      gapFieldVeh,
      Observer(builder: (_) {
        return Expanded(
          child: WWResponseHandler(
            data: vmVehicle.masterTruckApiResponse,
            onRefresh: () async => vmVehicle.masterTruckApi(),
            isEmpty: vmVehicle.masterTruckApiResponse.data?.isEmpty ?? true,
            onTap: () => vmVehicle.vehicleTextCtr.text.isNotEmpty
                ? vmVehicle
                    .masterTruckSearchServiceApi(vmVehicle.vehicleTextCtr.text)
                : vmVehicle.masterTruckApi(),
            child: const MasterTruckList(),
          ),
        );
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
    return Observer(
      builder: (context) {
        List<VehicleModel> list = vmVehicle.masterTruckApiResponse.data ?? [];
        return ListView.separated(
          controller: vmVehicle.masterTruckController,
          itemCount: list.length + 1,
          separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              if (vmVehicle.masterTruckApiResponse.data?[index] != null) {
                switch (vmVehicle.selectedVehicle) {
                  case "Vehicle list":
                    context.router.push(
                      VehicleDetailRoute(
                        data: vmVehicle.masterTruckApiResponse.data![index],
                      ),
                    );
                    break;
                  case "Pre Inspection check":
                    break;
                  case "Maintenance Report":
                    break;
                  case "Fuel Expense":
                    break;
                  default:
                }
              }
            },
            child: index == list.length
                ? vmVehicle.masterTruckApiResponse.paginationLoading
                    ? const CupertinoActivityIndicator()
                    : const SizedBox.shrink()
                : showData(
                    data: vmVehicle.masterTruckApiResponse.data?[index],
                    status: vmVehicle.vehicleStatusType,
                  ),
          ),
        );
      },
    );
  }
}
