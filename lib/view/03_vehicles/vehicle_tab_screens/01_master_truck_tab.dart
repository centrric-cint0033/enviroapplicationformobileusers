import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (vmVehicle.vehicleStatusType ==
                        VehicleActionType.maintenanceCheck ||
                    vmVehicle.vehicleStatusType ==
                        VehicleActionType.fuelExpence ||
                    vmVehicle.vehicleStatusType ==
                        VehicleActionType.preInspectionCheck)
                  CmButton(
                      text: 'Add New+',
                      onPressed: () {
                        vmVehicle.vehicleType = VehicleType.truck;
                        if (vmVehicle.vehicleStatusType ==
                            VehicleActionType.maintenanceCheck) {
                          vmVehicle.clearFn();
                          vmVehicle.getVehicleListApi();
                          context.router
                              .push(const AddMaintenanceReportRoute());
                        } else if (vmVehicle.vehicleStatusType ==
                            VehicleActionType.fuelExpence) {
                          vmVehicle.clearFn2();
                          vmVehicle.getVehicleListApi();
                          context.router.push(const AddFuelExpenseRoute());
                        } else if (vmVehicle.vehicleStatusType ==
                            VehicleActionType.preInspectionCheck) {
                          vmVehicle.clearPreinspectionDatas();
                          vmVehicle.getVehicleListApi();
                          context.router
                              .push(const VehicleAddPreInspectionRoute());
                        }
                      }),
              ],
            ),
            sized0hx05,
            Expanded(
              child: ListView.separated(
                itemCount: list.length + 1,
                padding: EdgeInsets.only(bottom: 20.h),
                controller: vmVehicle.masterTruckController,
                separatorBuilder: (BuildContext context, int index) =>
                    gapFieldVeh,
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    if (vmVehicle.masterTruckApiResponse.data?[index] != null) {
                      switch (vmVehicle.selectedVehicle) {
                        case "Vehicle list":
                          context.router.push(
                            VehicleDetailRoute(
                              data:
                                  vmVehicle.masterTruckApiResponse.data![index],
                            ),
                          );
                          break;
                        case "Pre Inspection check":
                          context.router.push(
                            PreInspectionDetailRoute(
                              data:
                                  vmVehicle.masterTruckApiResponse.data![index],
                            ),
                          );
                          break;
                        case "Maintenance Report":
                          editFnMaintenance(context, index);
                          break;
                        case "Fuel Expense":
                          editFnFuelExpense(context, index);
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
                          context: context,
                          data: vmVehicle.masterTruckApiResponse.data?[index],
                          status: vmVehicle.vehicleStatusType,
                          folderOnPressed: () {
                            vmVehicle.vehicleType = VehicleType.truck;
                            if (vmVehicle.vehicleStatusType ==
                                VehicleActionType.vehicleList) {
                              vmVehicle.folder = vmVehicle
                                      .masterTruckApiResponse
                                      .data![index]
                                      .folder ??
                                  1;
                              vmVehicle.getVehicleFoldersApi(
                                  vehicleId: vmVehicle.masterTruckApiResponse
                                          .data![index].id ??
                                      0,
                                  parentFolderId: vmVehicle
                                          .masterTruckApiResponse
                                          .data![index]
                                          .folder ??
                                      1);
                              vmVehicle.folderSearchCntrlr.text = "";
                              vmVehicle.fileFolderSearchCntrlr.text = "";
                              context.router.push(VehicleFolderRoute(
                                  vehicleId: vmVehicle
                                      .masterTruckApiResponse.data![index].id,
                                  vehicleType: vmVehicle.masterTruckApiResponse
                                      .data![index].vehicleType));
                            } else if (vmVehicle.vehicleStatusType ==
                                VehicleActionType.maintenanceCheck) {
                              vmVehicle.folder = vmVehicle
                                      .masterTruckApiResponse
                                      .data![index]
                                      .folder ??
                                  1;
                              vmVehicle.getMaintenanceFoldersApi(
                                  context: context,
                                  vehicleId: vmVehicle.masterTruckApiResponse
                                          .data![index].id ??
                                      0,
                                  parentFolderId: vmVehicle
                                          .masterTruckApiResponse
                                          .data![index]
                                          .folder ??
                                      1);
                              vmVehicle.folderSearchCntrlr.text = "";
                              vmVehicle.fileFolderSearchCntrlr.text = "";
                              context.router.push(VehicleFolderDetailRoute(
                                  vehicleId: vmVehicle
                                      .masterTruckApiResponse.data![index].id,
                                  vehicleType: vmVehicle.masterTruckApiResponse
                                      .data![index].vehicleType));
                            }
                          },
                          editOntapMaintenance: () {
                            editFnMaintenance(context, index);
                          },
                          editOntapFuelExpense: () {
                            editFnFuelExpense(context, index);
                          }),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  editFnMaintenance(BuildContext context, int index) {
    vmVehicle.vehicleType = VehicleType.truck;
    vmVehicle.getVehicleListApi();
    try {
      vmVehicle.selectedInvoiceDate = DateTime.parse(
          vmVehicle.masterTruckApiResponse.data![index].invoiceDate ?? "");
    } catch (e) {}
    try {
      vmVehicle.selectedServiceDate = DateTime.parse(
          vmVehicle.masterTruckApiResponse.data![index].serviceDate ?? "");
    } catch (e) {}
    vmVehicle.cmAddFunction(vmVehicle.masterTruckApiResponse.data![index]);
    context.router.push(EditMaintenanceReportRoute(
        data: vmVehicle.masterTruckApiResponse.data![index]));
  }

  editFnFuelExpense(BuildContext context, int index) {
    vmVehicle.vehicleType = VehicleType.truck;
    vmVehicle.getVehicleListApi();
    try {
      vmVehicle.selectedFuelExpenseDate = DateTime.parse(
          vmVehicle.masterTruckApiResponse.data![index].date ?? "");
    } catch (e) {}
    try {
      vmVehicle.selectedFuelExpenseTime =
          parseTime(vmVehicle.masterTruckApiResponse.data![index].time ?? "");
    } catch (e) {}
    vmVehicle.cmAddFunction2(vmVehicle.masterTruckApiResponse.data![index]);
    context.router.push(EditFuelExpenseRoute(
        data: vmVehicle.masterTruckApiResponse.data![index]));
  }
}

TimeOfDay? parseTime(String? timeString) {
  if (timeString == null || timeString.isEmpty) {
    return null;
  }
  final parts = timeString.split(":");
  if (parts.length != 2) {
    return null;
  }
  final hour = int.tryParse(parts[0]);
  final minute = int.tryParse(parts[1]);
  if (hour == null || minute == null) {
    return null;
  }
  return TimeOfDay(hour: hour, minute: minute);
}
