import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MasterCarTab extends StatelessWidget {
  const MasterCarTab({Key? key}) : super(key: key);

  _onChanged(String v) => vmVehicle.onTextChanged(() {
        v.isEmpty ? vmVehicle.masterCarApi() : vmVehicle.masterCarSearchApi(v);
      });

  @override
  Widget build(BuildContext context) {
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
                data: vmVehicle.masterCarApiResponse,
                onRefresh: () async => vmVehicle.masterCarApi(),
                isEmpty: vmVehicle.masterCarApiResponse.data?.isEmpty ?? true,
                onTap: () => vmVehicle.vehicleTextCtr.text.isNotEmpty
                    ? vmVehicle
                        .masterCarSearchApi(vmVehicle.vehicleTextCtr.text)
                    : vmVehicle.masterCarApi(),
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
    return Observer(
      builder: (context) {
        List<VehicleModel> list = vmVehicle.masterCarApiResponse.data ?? [];
        return ListView.separated(
          itemCount: list.length + 1,
          controller: vmVehicle.masterCarController,
          padding: EdgeInsets.only(bottom: 20.h),
          separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
          itemBuilder: (context, index) {
            return index == list.length
                ? vmVehicle.masterCarApiResponse.paginationLoading
                    ? const CupertinoActivityIndicator()
                    : const SizedBox.shrink()
                : InkWell(
                    onTap: () {
                      if (vmVehicle.masterCarApiResponse.data?[index] != null) {
                        switch (vmVehicle.selectedVehicle) {
                          case "Vehicle list":
                            context.router.push(
                              VehicleDetailRoute(
                                data:
                                    vmVehicle.masterCarApiResponse.data![index],
                              ),
                            );
                            break;
                          case "Pre Inspection check":
                            context.router.push(
                              VehicleDetailRoute(
                                data:
                                    vmVehicle.masterCarApiResponse.data![index],
                              ),
                            );
                            break;
                          case "Maintenance Report":
                            context.router.push(
                              VehicleDetailRoute(
                                data:
                                    vmVehicle.masterCarApiResponse.data![index],
                              ),
                            );
                            break;
                          case "Fuel Expense":
                            context.router.push(
                              VehicleDetailRoute(
                                data:
                                    vmVehicle.masterCarApiResponse.data![index],
                              ),
                            );
                            break;
                          default:
                        }
                      }
                    },
                    child: showData(
                        data: vmVehicle.masterCarApiResponse.data?[index]));
          },
        );
      },
    );
  }
}
