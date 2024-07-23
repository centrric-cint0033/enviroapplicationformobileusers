import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../widgets/cmn_title_textwidget.dart';
import '../../model/03_vehicle/vehicle_model/vehicle_model.dart';

@RoutePage()
class EditMaintenanceReportPage extends StatelessWidget {
  final VehicleModel data;
  const EditMaintenanceReportPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Edit Report'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      expandedRowShowWidget(
                          "Vehicle", VehicleListDropDown(vehicle: data)),
                      expandedRowShowWidget(
                          "Description",
                          cmTextFormField(
                              controller: vmVehicle.descriptionCntrlr)),
                      expandedRowShowWidget(
                          "Service Provided",
                          cmTextFormField(
                              controller: vmVehicle.serviceProvidedCntrlr)),
                      expandedRowShowWidget(
                          "Invoice Date",
                          Observer(
                              builder: (context) => cmDatePicker(
                                  context,
                                  data.invoiceDate,
                                  vmVehicle.selectedInvoiceDate,
                                  (date) => vmVehicle.datePickerFn(date)))),
                      expandedRowShowWidget(
                          "Service Date",
                          Observer(
                              builder: (context) => cmDatePicker(
                                  context,
                                  data.serviceDate,
                                  vmVehicle.selectedServiceDate,
                                  (date) => vmVehicle.datePickerFn2(date)))),
                      expandedRowShowWidget("Ometer",
                          cmTextFormField(controller: vmVehicle.ometerCntrlr)),
                      expandedRowShowWidget(
                          "Invoice No",
                          cmTextFormField(
                              controller: vmVehicle.invoiceNoCntrlr)),
                      expandedRowShowWidget("Hours",
                          cmTextFormField(controller: vmVehicle.hoursCntrlr)),
                      expandedRowShowWidget(
                          "Labour Cost",
                          cmTextFormField(
                              controller: vmVehicle.labourCostCntrlr)),
                      expandedRowShowWidget(
                          "Spare Parts",
                          cmTextFormField(
                              controller: vmVehicle.sparePartsCntrlr)),
                      expandedRowShowWidget("GST",
                          cmTextFormField(controller: vmVehicle.gstCntrlr)),
                      expandedRowShowWidget(
                          "Total Cost",
                          cmTextFormField(
                              controller: vmVehicle.totalCostCntrlr)),
                      Observer(builder: (context) {
                        return CmButton(
                          text: "Save",
                          width: 120.w,
                          indicatorColor: Colors.white,
                          loading: vmVehicle.editedMaintenanceResponse.loading,
                          onPressed: () {
                            vmVehicle.editMaintenanceReportApi(
                                context: context,
                                vehicleId: data.id ?? 0,
                                data: VehicleModel(
                                    vehicle: vmVehicle.selectedVehicleeId !=
                                                0 &&
                                            vmVehicle.selectedVehicleeId != null
                                        ? vmVehicle.selectedVehicleeId
                                        : vmVehicle.selectedVehiclee?.id,
                                    description:
                                        vmVehicle.descriptionCntrlr.text,
                                    serviceProvided:
                                        vmVehicle.serviceProvidedCntrlr.text,
                                    invoiceDate: DateFormat('yyyy-MM-dd')
                                        .format(vmVehicle.selectedInvoiceDate!),
                                    serviceDate: DateFormat('yyyy-MM-dd')
                                        .format(vmVehicle.selectedServiceDate!),
                                    ometer: vmVehicle.ometerCntrlr.text,
                                    invoiceNumber:
                                        vmVehicle.invoiceNoCntrlr.text,
                                    hours: vmVehicle.hoursCntrlr.text,
                                    lCost: vmVehicle.labourCostCntrlr.text,
                                    sPart: vmVehicle.sparePartsCntrlr.text,
                                    gst: vmVehicle.gstCntrlr.text,
                                    totalCost: vmVehicle.totalCostCntrlr.text,
                                    tabType: data.tabType));
                          },
                        );
                      })
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
