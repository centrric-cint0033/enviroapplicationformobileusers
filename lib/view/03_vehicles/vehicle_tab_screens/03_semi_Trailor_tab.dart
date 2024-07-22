import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SemiTrailersTab extends StatelessWidget {
  const SemiTrailersTab({Key? key}) : super(key: key);

  _onChanged(String v) => vmVehicle.onTextChanged(() {
        v.isEmpty
            ? vmVehicle.semiTrailorApi()
            : vmVehicle.semiTrailorSearchApi(v);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WWTextField(
            controller: vmVehicle.vehicleTextCtr,
            onChanged: _onChanged,
            suffixTap: () {},
          ),
          gapFieldVeh,
          Observer(builder: (_) {
            return Expanded(
                child: WWResponseHandler(
                    data: vmVehicle.semiTrailorApiResponse,
                    onRefresh: () async => vmVehicle.semiTrailorApi(),
                    isEmpty:
                        vmVehicle.semiTrailorApiResponse.data?.isEmpty ?? true,
                    onTap: () => vmVehicle.vehicleTextCtr.text.isNotEmpty
                        ? vmVehicle
                            .semiTrailorSearchApi(vmVehicle.vehicleTextCtr.text)
                        : vmVehicle.semiTrailorApi(),
                    child: const SemiTrailersList()));
          }),
        ],
      ),
    );
  }
}

class SemiTrailersList extends StatelessWidget {
  const SemiTrailersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<VehicleModel> list = vmVehicle.semiTrailorApiResponse.data ?? [];
        return ListView.separated(
          itemCount: list.length + 1,
          padding: EdgeInsets.only(bottom: 20.h),
          controller: vmVehicle.semiTrailorController,
          separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
          itemBuilder: (context, index) => index == list.length
              ? vmVehicle.semiTrailorApiResponse.paginationLoading
                  ? const CupertinoActivityIndicator()
                  : const SizedBox.shrink()
              : InkWell(
                  onTap: () {
                    if (vmVehicle.semiTrailorApiResponse.data?[index] != null) {
                      switch (vmVehicle.selectedVehicle) {
                        case "Vehicle list":
                          context.router.push(
                            VehicleDetailRoute(
                              data:
                                  vmVehicle.semiTrailorApiResponse.data![index],
                            ),
                          );
                          break;
                        case "Pre Inspection check":
                          context.router.push(
                            VehicleDetailRoute(
                              data:
                                  vmVehicle.semiTrailorApiResponse.data![index],
                            ),
                          );
                          break;
                        case "Maintenance Report":
                          vmVehicle.vehicleType = VehicleType.semiTrailer;
                          vmVehicle.getVehicleListApi();
                          try {
                            vmVehicle.selectedInvoiceDate = DateTime.parse(
                                vmVehicle.semiTrailorApiResponse.data![index]
                                        .invoiceDate ??
                                    "");
                          } catch (e) {}
                          try {
                            vmVehicle.selectedServiceDate = DateTime.parse(
                                vmVehicle.semiTrailorApiResponse.data![index]
                                        .serviceDate ??
                                    "");
                          } catch (e) {}
                          vmVehicle.cmAddFunction(
                              vmVehicle.semiTrailorApiResponse.data![index]);
                          context.router.push(EditMaintenanceReportRoute(
                              data: vmVehicle
                                  .semiTrailorApiResponse.data![index]));
                          break;
                        case "Fuel Expense":
                          context.router.push(
                            VehicleDetailRoute(
                              data:
                                  vmVehicle.semiTrailorApiResponse.data![index],
                            ),
                          );
                          break;
                        default:
                      }
                    }
                  },
                  child: showData(
                     context: context,
                      data: vmVehicle.semiTrailorApiResponse.data?[index],
                      status: vmVehicle.vehicleStatusType,
                      folderOnPressed: () {
                        vmVehicle.vehicleType = VehicleType.semiTrailer;
                        if (vmVehicle.vehicleStatusType ==
                            VehicleActionType.vehicleList) {
                          vmVehicle.folder = vmVehicle
                                  .semiTrailorApiResponse.data![index].folder ??
                              1;
                          vmVehicle.getVehicleFoldersApi(
                              vehicleId: vmVehicle
                                      .semiTrailorApiResponse.data![index].id ??
                                  0,
                              parentFolderId: vmVehicle.semiTrailorApiResponse
                                      .data![index].folder ??
                                  1);
                          vmVehicle.folderSearchCntrlr.text = "";
                          vmVehicle.fileFolderSearchCntrlr.text = "";
                          context.router.push(VehicleFolderRoute(
                              vehicleId: vmVehicle
                                  .semiTrailorApiResponse.data![index].id,
                              vehicleType: "forklift"));
                        } else {
                          vmVehicle.folder = vmVehicle
                                  .semiTrailorApiResponse.data![index].folder ??
                              1;
                          vmVehicle.getMaintenanceFoldersApi(
                              vehicleId: vmVehicle
                                      .semiTrailorApiResponse.data![index].id ??
                                  0,
                              parentFolderId: vmVehicle.semiTrailorApiResponse
                                      .data![index].folder ??
                                  1);
                          vmVehicle.folderSearchCntrlr.text = "";
                          vmVehicle.fileFolderSearchCntrlr.text = "";
                          context.router.push(VehicleFolderDetailRoute(
                              vehicleId: vmVehicle
                                  .semiTrailorApiResponse.data![index].id,
                              vehicleType: "forklift"));
                        }
                      }),
                ),
        );
      },
    );
  }
}
