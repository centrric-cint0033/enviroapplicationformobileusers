import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_tab_screens/01_master_truck_tab.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
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
                        vmVehicle.vehicleType = VehicleType.car;
                        if (vmVehicle.vehicleStatusType ==
                            VehicleActionType.maintenanceCheck) {
                          vmVehicle.clearFn();
                          vmVehicle.getVehicleListApi();
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
                controller: vmVehicle.masterCarController,
                padding: EdgeInsets.only(bottom: 20.h),
                separatorBuilder: (BuildContext context, int index) =>
                    gapFieldVeh,
                itemBuilder: (context, index) {
                  return index == list.length
                      ? vmVehicle.masterCarApiResponse.paginationLoading
                          ? const CupertinoActivityIndicator()
                          : const SizedBox.shrink()
                      : InkWell(
                          onTap: () {
                            if (vmVehicle.masterCarApiResponse.data?[index] !=
                                null) {
                              switch (vmVehicle.selectedVehicle) {
                                case "Vehicle list":
                                  context.router.push(
                                    VehicleDetailRoute(
                                      data: vmVehicle
                                          .masterCarApiResponse.data![index],
                                    ),
                                  );
                                  break;
                                case "Pre Inspection check":
                                  context.router.push(
                                    VehicleDetailRoute(
                                      data: vmVehicle
                                          .masterCarApiResponse.data![index],
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
                          child: showData(
                              context: context,
                              data: vmVehicle.masterCarApiResponse.data?[index],
                              folderOnPressed: () {
                                vmVehicle.vehicleType = VehicleType.car;
                                if (vmVehicle.vehicleStatusType ==
                                    VehicleActionType.vehicleList) {
                                  vmVehicle.folder = vmVehicle
                                          .masterTruckApiResponse
                                          .data![index]
                                          .folder ??
                                      1;
                                  vmVehicle.getVehicleFoldersApi(
                                      vehicleId: vmVehicle.masterCarApiResponse
                                              .data![index].id ??
                                          0,
                                      parentFolderId: vmVehicle
                                              .masterCarApiResponse
                                              .data![index]
                                              .folder ??
                                          1);
                                  vmVehicle.folderSearchCntrlr.text = "";
                                  vmVehicle.fileFolderSearchCntrlr.text = "";
                                  context.router.push(VehicleFolderRoute(
                                      vehicleId: vmVehicle
                                          .masterTruckApiResponse
                                          .data![index]
                                          .id,
                                      vehicleType: "cars"));
                                } else {
                                  vmVehicle.folder = vmVehicle
                                          .masterTruckApiResponse
                                          .data![index]
                                          .folder ??
                                      1;
                                  vmVehicle.getMaintenanceFoldersApi(
                                      context: context,
                                      vehicleId: vmVehicle.masterCarApiResponse
                                              .data![index].id ??
                                          0,
                                      parentFolderId: vmVehicle
                                              .masterCarApiResponse
                                              .data![index]
                                              .folder ??
                                          1);
                                  vmVehicle.folderSearchCntrlr.text = "";
                                  vmVehicle.fileFolderSearchCntrlr.text = "";
                                  context.router.push(VehicleFolderDetailRoute(
                                      vehicleId: vmVehicle
                                          .masterCarApiResponse.data![index].id,
                                      vehicleType: "cars"));
                                }
                              },
                              editOntapMaintenance: () {
                                editFnMaintenance(context, index);
                              },
                              editOntapFuelExpense: () {
                                editFnFuelExpense(context, index);
                              }));
                },
              ),
            ),
          ],
        );
      },
    );
  }

  editFnMaintenance(BuildContext context, int index) {
    vmVehicle.vehicleType = VehicleType.car;
    vmVehicle.getVehicleListApi();
    try {
      vmVehicle.selectedInvoiceDate = DateTime.parse(
          vmVehicle.masterCarApiResponse.data![index].invoiceDate ?? "");
    } catch (e) {}
    try {
      vmVehicle.selectedServiceDate = DateTime.parse(
          vmVehicle.masterCarApiResponse.data![index].serviceDate ?? "");
    } catch (e) {}
    vmVehicle.cmAddFunction(vmVehicle.masterCarApiResponse.data![index]);
    context.router.push(EditMaintenanceReportRoute(
        data: vmVehicle.masterCarApiResponse.data![index]));
  }

  editFnFuelExpense(BuildContext context, int index) {
    vmVehicle.vehicleType = VehicleType.car;
    vmVehicle.getVehicleListApi();
    try {
      vmVehicle.selectedFuelExpenseDate = DateTime.parse(
          vmVehicle.masterCarApiResponse.data![index].date ?? "");
    } catch (e) {}
    try {
      vmVehicle.selectedFuelExpenseTime =
          parseTime(vmVehicle.masterCarApiResponse.data![index].time ?? "");
    } catch (e) {}
    vmVehicle.cmAddFunction2(vmVehicle.masterCarApiResponse.data![index]);
    context.router.push(EditFuelExpenseRoute(
        data: vmVehicle.masterCarApiResponse.data![index]));
  }
}
