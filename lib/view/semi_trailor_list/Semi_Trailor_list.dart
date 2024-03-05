import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart';
import 'package:enviro_mobile_application/view/service/semi_trailor_service.dart/semi_trailor_service.dart';

TextEditingController textController = TextEditingController();

class SemiTrailorPage extends StatelessWidget {
  const SemiTrailorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              Observer(builder: (_) {
                String? newValue = vmtrailor.selectedVehicle ?? 'Vehicle list';
                print('azeemsele$newValue');
                List<String> vehicleOptions = [
                  'Vehicle list',
                  'Preinspectioncheck',
                  'Maintenance check',
                  'Fuel Expense',
                ];

                return Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 54,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0XFF949494)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Observer(builder: (_) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: DropdownButtonHideUnderline(
                                  child: Observer(builder: (_) {
                                    return DropdownButton<String>(
                                      value: newValue,
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          vmtrailor
                                              .setSelectedVehicle(newValue);
                                          print('azeemsss: $newValue');
                                          MasterTruckActionType? actionType;
                                          switch (newValue) {
                                            case 'Vehicle list':
                                              actionType = MasterTruckActionType
                                                  .vehiclelist;
                                              break;
                                            case 'Preinspectioncheck':
                                              actionType = MasterTruckActionType
                                                  .Preinspectioncheck;
                                              break;
                                            case 'Maintenance check':
                                              actionType = MasterTruckActionType
                                                  .MaintenanceCheck;
                                              break;
                                            case 'Fuel Expense':
                                              actionType = MasterTruckActionType
                                                  .fuelexpence;
                                              break;
                                          }
                                          if (actionType != null) {
                                            vmtrailor.trailorfunction(
                                                semitruckdrop: actionType);
                                          }
                                        }
                                      },
                                      items: vehicleOptions
                                          .map((String selectedVehicle) {
                                        return DropdownMenuItem<String>(
                                          value: selectedVehicle,
                                          child: Text(selectedVehicle),
                                        );
                                      }).toList(),
                                    );
                                  }),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              const SizedBox(height: 16.0),
              Container(
                padding: const EdgeInsets.only(right: 15.0, left: 15),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0),
                          border: Border.all(
                            color: const Color(0XFF949494),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                onChanged: (value) {
                                  if (value.isEmpty) {
                                    vmtrailor.trailorfunction();
                                  } else {
                                    vmtrailor.semifueltrucksearchfunction();
                                  }
                                },
                                controller: textController,
                                style: const TextStyle(color: Colors.black),
                                decoration: InputDecoration(
                                  hintText: 'Search By client',
                                  hintStyle:
                                      const TextStyle(color: Colors.grey),
                                  border: InputBorder.none,
                                  suffixIcon: Observer(builder: (_) {
                                    return GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: const Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16.0),
              Observer(
                builder: (BuildContext context) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount:
                          vmtrailor.semitrailorPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data =
                            vmtrailor.semitrailorPageResponse.data?[index];
                        return _buildJobCard(
                          registrationno: data?.registration ?? "",
                          RegoDue: data?.editedDateTime ?? "",
                          Type: data?.types ?? "",
                          year: data?.year ?? "",
                          odometer: data?.odometer,
                          drivername: data?.driver_name,
                          Date: data?.date_time ?? "",
                          servicedate: data?.service_provided ?? "",
                          labourcost: data?.l_cost ?? "",
                          spareparts: data?.s_part ?? "",
                          totalcost: data?.total_cost ?? "",
                        );
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobCard({
    required dynamic registrationno,
    required dynamic RegoDue,
    required String Type,
    required dynamic year,
    required int? odometer,
    required int? drivername,
    required String? Date,
    required String? servicedate,
    required String? labourcost,
    required String? spareparts,
    required String? totalcost,
  }) {
    return Container(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.only(left: 16.0, right: 16),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0XFF949494),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "registrationno            : $registrationno",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "RegoDue                   : $RegoDue",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Flexible(
                    child: Text(
                      "Type                   : $Type",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "Year                   : $year",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "odometer           : $odometer",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "drivername           : $drivername",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "spareparts          : $spareparts",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "date         : $Date",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "servicedate          : $servicedate",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "labourcost          : $labourcost",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "totalcost           : $totalcost",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
