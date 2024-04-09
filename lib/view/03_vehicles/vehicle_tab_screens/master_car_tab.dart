import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

TextEditingController textController = TextEditingController();

class MasterCarTab extends StatelessWidget {
  const MasterCarTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WWSearchField(
            controller: vmVehicle.vehSemiTrailorCtr,
            onChanged: (v) => vmVehicle.onTextChanged(() {
              if (v.isEmpty) {
                vmVehicle.mastercarfunction();
              } else {
                vmVehicle.fuelsearchfunction();
              }
            }),
            searchTap: () {},
          ),
          gapFieldVeh,
          Observer(
            builder: (BuildContext context) {
              return Expanded(
                child: ListView.separated(
                  itemCount: vmVehicle.carPageResponse.data?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) =>
                      gapFieldVeh,
                  itemBuilder: (context, index) {
                    var data = vmVehicle.carPageResponse.data?[index];
                    return showData(data: data);
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // Widget _buildJobCard({
  //   required String registrationno,
  //   DateTime? RegoDue,
  //   required String Type,
  //   required int? year,
  //   required int? odometer,
  //   required int? drivername,
  //   DateTime? Date,
  //   required String? servicedate,
  //   required String? labourcost,
  //   required String? spareparts,
  //   required String? totalcost,
  // }) {
  //   return SizedBox(
  //     width: double.infinity,
  //     child: Card(
  //       margin: const EdgeInsets.only(left: 16.0, right: 16),
  //       shape: RoundedRectangleBorder(
  //         side: const BorderSide(
  //           color: Color(0XFF949494),
  //         ),
  //         borderRadius: BorderRadius.circular(8.0),
  //       ),
  //       color: Colors.white,
  //       child: Padding(
  //         padding: const EdgeInsets.all(16.0),
  //         child: Observer(builder: (_) {
  //           return Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     "Registration no : $registrationno",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                   SizedBox(
  //                     height: 26,
  //                     width: 87,
  //                     child: ElevatedButton(
  //                       style: ElevatedButton.styleFrom(
  //                         side: const BorderSide(
  //                           color: Color(0XFF949494),
  //                         ),
  //                       ),
  //                       onPressed: () {
  //                         print('vgjhsdvbsjhdb');
  //                       },
  //                       child: const Padding(
  //                         padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
  //                         child: Text(
  //                           'Folders',
  //                           style: TextStyle(color: Colors.black54),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(
  //                 height: 8.0,
  //               ),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "RegoDue            : $RegoDue",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Flexible(
  //                     child: Text(
  //                       "Type                   : $Type",
  //                       overflow: TextOverflow.ellipsis,
  //                       style: const TextStyle(color: Colors.blue),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "Year                   : $year",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "odometer           : $odometer",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "drivername           : $drivername",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "spareparts          : $spareparts",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "date         : $Date",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "servicedate          : $servicedate",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "labourcost          : $labourcost",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "odometer           : $odometer",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               const SizedBox(height: 8.0),
  //               Row(
  //                 children: [
  //                   Text(
  //                     "totalcost           : $totalcost",
  //                     overflow: TextOverflow.ellipsis,
  //                     style: const TextStyle(color: Colors.blue),
  //                   ),
  //                 ],
  //               ),
  //               if (vmVehicle.status == VehicleActionType.fuelExpence)
  //                 Observer(builder: (_) {
  //                   return Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       SizedBox(
  //                         height: 26,
  //                         width: 88,
  //                         child: ElevatedButton(
  //                           style: ElevatedButton.styleFrom(
  //                             side: const BorderSide(
  //                               color: Color(0XFF949494),
  //                             ),
  //                           ),
  //                           onPressed: () {},
  //                           child: const Padding(
  //                             padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
  //                             child: Text(
  //                               'Edit',
  //                               style: TextStyle(color: Colors.black54),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         height: 26,
  //                         // width: 87,
  //                         child: ElevatedButton(
  //                           style: ElevatedButton.styleFrom(
  //                             side: const BorderSide(
  //                               color: Color(0XFF949494),
  //                             ),
  //                           ),
  //                           onPressed: () {},
  //                           child: const Padding(
  //                             padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
  //                             child: Text(
  //                               'Delete',
  //                               style: TextStyle(color: Colors.black54),
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   );
  //                 }),
  //             ],
  //           );
  //         }),
  //       ),
  //     ),
  //   );
  // }
}
