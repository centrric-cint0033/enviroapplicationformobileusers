import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_additional_card.dart';
import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart';
import 'package:enviro_mobile_application/view/service/master_truckservice/master_truckservice.dart';
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

TextEditingController textController = TextEditingController();

class MasterCarpage extends StatelessWidget {
  const MasterCarpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("azeem: ${vmcar.carPageResponse}");

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              Observer(builder: (_) {
                String? selectedcar = vmcar.selectedcarstatus ?? 'Vehicle list';

                print('azsssxx$selectedcar');
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
                                      value: selectedcar,
                                      onChanged: (String? selectedcar) {
                                        vmcar.setSelectedCar(selectedcar);
                                        CarActionType? actionType;
                                        switch (selectedcar) {
                                          case 'Vehicle list':
                                            actionType =
                                                CarActionType.vehiclelist;
                                            break;
                                          case 'Preinspectioncheck':
                                            actionType = CarActionType
                                                .Preinspectioncheck;
                                            break;
                                          case 'Maintenance check':
                                            actionType =
                                                CarActionType.MaintenanceCheck;
                                            break;
                                          case 'Fuel Expense':
                                            actionType =
                                                CarActionType.fuelexpence;

                                            break;
                                        }
                                        if (actionType != null) {
                                          vmcar.mastercarfunction(
                                              drop: actionType);
                                          // onMasterCardClicked!();
                                        }
                                      },
                                      items: vehicleOptions.map((String drop) {
                                        return DropdownMenuItem<String>(
                                          value: drop,
                                          child: Text(drop),
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
                                    vmcar.mastercarfunction();
                                  } else {
                                    vmcar.fuelsearchfunction();
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
                      itemCount: vmcar.carPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data = vmcar.carPageResponse.data?[index];
                        return _buildJobCard(
                          registrationno: data?.registration ?? "",
                          RegoDue: data?.editedDateTime ?? "",
                          Type: data?.types ?? "",
                          year: data?.year,
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
    required String registrationno,
    required String RegoDue,
    required String Type,
    required int? year,
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
          child: Observer(builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Registration no : $registrationno",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                    SizedBox(
                      height: 26,
                      width: 87,
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
                            'Folders',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Text(
                      "RegoDue            : $RegoDue",
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
                      "totalcost           : $totalcost",
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                if (vmcar.status == CarActionType.fuelexpence)
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
                  }),
              ],
            );
          }),
        ),
      ),
    );
  }
}
