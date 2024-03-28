import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
                String? newValue = vmVehicle.selectedVehicle ?? 'Vehicle list';
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
                                          vmVehicle
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
                                            vmVehicle.trailorfunction(
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
                                    vmVehicle.trailorfunction();
                                  } else {
                                    vmVehicle.semifueltrucksearchfunction();
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
                          vmVehicle.semitrailorPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data =
                            vmVehicle.semitrailorPageResponse.data?[index];
                        return _buildJobCard(
                          registrationno: data?.registration ?? "",
                          regoDue: data?.editedDateTime,
                          Type: data?.types ?? "",
                          year: data?.year,
                          odometer: data?.odometer,
                          drivername: data?.driverName,
                          date: data?.dateTime,
                          servicedate: data?.serviceProvided ?? "",
                          labourcost: data?.lCost ?? "",
                          spareparts: data?.sPart ?? "",
                          totalcost: data?.totalCost ?? "",
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
    DateTime? regoDue,
    required String Type,
    required dynamic year,
    required int? odometer,
    required int? drivername,
    DateTime? date,
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
                      "RegoDue                   : ${regoDue.toString()}",
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
                    "date         : ${date.toString()}",
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
              const SizedBox(height: 8.0),
              if (vmVehicle.status == MasterTruckActionType.fuelexpence)
                Observer(builder: (_) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 26,
                        width: 88,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0XFF949494),
                            ),
                          ),
                          onPressed: () {
                            print('vgjhsdvbsjhdb');
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
                            child: Text(
                              'Edit',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 26,
                        // width: 87,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            side: const BorderSide(
                              color: Color(0XFF949494),
                            ),
                          ),
                          onPressed: () {
                            print('vgjhsdvbsjhdb');
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
                            child: Text(
                              'Delete',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                })
            ],
          ),
        ),
      ),
    );
  }
}
