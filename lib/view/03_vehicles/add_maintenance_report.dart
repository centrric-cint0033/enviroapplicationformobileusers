import 'dart:io';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import '../../widgets/cmn_title_textwidget.dart';
import '../../model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:path/path.dart' as p;

@RoutePage()
class AddMaintenanceReportPage extends StatelessWidget {
  const AddMaintenanceReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Add Report'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Observer(builder: (context) {
            vmVehicle.showSubmitButtonFn();
            return Column(
              children: [
                Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        expandedRowShowWidget(
                            "Vehicle",
                            const VehicleListDropDown(
                              fromAddMaintenance: true,
                            )),
                        expandedRowShowWidget(
                            "Description",
                            cmTextFormField(
                              controller: vmVehicle.descriptionCntrlr,
                              hintText: "description",
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Service Provided",
                            cmTextFormField(
                              controller: vmVehicle.serviceProvidedCntrlr,
                              hintText: "service provided",
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Invoice Date",
                            Observer(
                                builder: (context) => cmDatePicker(
                                    context,
                                    "",
                                    vmVehicle.selectedInvoiceDateAddMaintenance,
                                    (date) => vmVehicle.datePickerFn3(date)))),
                        expandedRowShowWidget(
                            "Service Date",
                            Observer(
                                builder: (context) => cmDatePicker(
                                    context,
                                    "",
                                    vmVehicle.selectedServiceDateAddMaintenance,
                                    (date) => vmVehicle.datePickerFn4(date)))),
                        expandedRowShowWidget(
                            "Ometer",
                            cmTextFormField(
                              controller: vmVehicle.ometerCntrlr,
                              hintText: "ometer",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Invoice No",
                            cmTextFormField(
                                controller: vmVehicle.invoiceNoCntrlr,
                                hintText: "invoice no",
                                keyboardType:
                                    const TextInputType.numberWithOptions())),
                        expandedRowShowWidget(
                            "Hours",
                            cmTextFormField(
                              controller: vmVehicle.hoursCntrlr,
                              hintText: "hour",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Labour Cost",
                            cmTextFormField(
                              controller: vmVehicle.labourCostCntrlr,
                              hintText: "labour cost",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Spare Parts",
                            cmTextFormField(
                              controller: vmVehicle.sparePartsCntrlr,
                              hintText: "spare parts",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "GST",
                            cmTextFormField(
                              controller: vmVehicle.gstCntrlr,
                              hintText: "GST",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        expandedRowShowWidget(
                            "Total Cost",
                            cmTextFormField(
                              controller: vmVehicle.totalCostCntrlr,
                              hintText: "cost",
                              keyboardType:
                                  const TextInputType.numberWithOptions(),
                              onChanged: (value) {
                                vmVehicle.showSubmitButtonFn();
                              },
                            )),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CmButton(
                            text: "Add Files",
                            onPressed: () {
                              vmVehicle.pickFilefromphone();
                            },
                            textcolor: Colors.black,
                            width: 90.w,
                            color: Colors.white,
                            borderColor: Colors.grey,
                          ),
                        ),
                        sized0hx05,
                        if (vmVehicle.pickedFileList != null &&
                            vmVehicle.pickedFileList!.isNotEmpty) ...[
                          SizedBox(
                            height: 70.h,
                            width: double.infinity,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: vmVehicle.pickedFileList?.length,
                              itemBuilder: (context, index) {
                                String imagePath =
                                    vmVehicle.pickedFileList![index];
                                String fileName = p.basename(imagePath);
                                bool isImage = imagePath.endsWith('.jpg') ||
                                    imagePath.endsWith('.jpeg') ||
                                    imagePath.endsWith('.png');
                                return InkWell(
                                  onTap: () async {
                                    OpenFile.open(
                                      imagePath,
                                    );
                                  },
                                  onLongPress: () {
                                    showConfirmationAlert(
                                        context: context,
                                        onSubmit: () {
                                          vmVehicle.pickedFileList
                                              ?.removeAt(index);
                                        },
                                        content:
                                            "Are you sure you want to delete?",
                                        submitText: "Yes",
                                        submitText2: "No");
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: 80.h, // Width of each item
                                      foregroundDecoration:
                                          BoxDecoration(border: Border.all()),
                                      child: Column(
                                        children: [
                                          sized0hx05,
                                          Expanded(
                                            child: isImage
                                                ? Image.file(
                                                    File(imagePath),
                                                    fit: BoxFit.cover,
                                                  )
                                                : Icon(
                                                    Icons.file_copy,
                                                    size: 20.w,
                                                    color: Colors.red,
                                                  ),
                                          ),
                                          Expanded(
                                              child: Text(
                                            fileName,
                                            style: TextStyle(
                                                fontSize: 9.sp,
                                                overflow:
                                                    TextOverflow.ellipsis),
                                          ))
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                        CmButton(
                          text: "Submit",
                          height: 35.w,
                          width: 120.w,
                          color: Appthemes.cPrimary,
                          indicatorColor: Colors.white,
                          loading: vmVehicle.addMaintenanceResponse.loading,
                          onPressed: () {
                            cmSubmitFn(context);
                          },
                        )
                      ])),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }

  cmSubmitFn(BuildContext context) {
    if (vmVehicle.descriptionCntrlr.text.isNotEmpty &&
        vmVehicle.serviceProvidedCntrlr.text.isNotEmpty &&
        vmVehicle.selectedInvoiceDateAddMaintenance != null &&
        vmVehicle.selectedServiceDateAddMaintenance != null &&
        vmVehicle.ometerCntrlr.text.isNotEmpty &&
        vmVehicle.invoiceNoCntrlr.text.isNotEmpty &&
        vmVehicle.hoursCntrlr.text.isNotEmpty &&
        vmVehicle.labourCostCntrlr.text.isNotEmpty &&
        vmVehicle.sparePartsCntrlr.text.isNotEmpty &&
        vmVehicle.gstCntrlr.text.isNotEmpty &&
        vmVehicle.totalCostCntrlr.text.isNotEmpty) {
      vmVehicle.addMaintenanceReportApi(
          context: context,
          data: VehicleModel(
              vehicle: vmVehicle.selectedVehicleAddMaintenanceId != 0 &&
                      vmVehicle.selectedVehicleAddMaintenanceId != null
                  ? vmVehicle.selectedVehicleAddMaintenanceId
                  : vmVehicle.selectedVehicleAddMaintenance?.id,
              description: vmVehicle.descriptionCntrlr.text,
              serviceProvided: vmVehicle.serviceProvidedCntrlr.text,
              invoiceDate: DateFormat('yyyy-MM-dd')
                  .format(vmVehicle.selectedInvoiceDateAddMaintenance!),
              serviceDate: DateFormat('yyyy-MM-dd')
                  .format(vmVehicle.selectedServiceDateAddMaintenance!),
              ometer: vmVehicle.ometerCntrlr.text,
              invoiceNumber: vmVehicle.invoiceNoCntrlr.text,
              hours: vmVehicle.hoursCntrlr.text,
              lCost: vmVehicle.labourCostCntrlr.text,
              sPart: vmVehicle.sparePartsCntrlr.text,
              gst: vmVehicle.gstCntrlr.text,
              totalCost: vmVehicle.totalCostCntrlr.text,
              tabType: "waste"),
          pickedFiles: vmVehicle.pickedFileList?.toList() ?? []);
    } else {
      showToast(context, msg: "Please fill all the fields", color: Colors.red);
    }
  }
}
