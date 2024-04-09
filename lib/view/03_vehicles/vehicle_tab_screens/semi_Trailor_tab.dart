import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SemiTrailers extends StatelessWidget {
  const SemiTrailers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WWSearchField(
            controller: vmVehicle.vehSemiTrailorCtr,
            onChanged: (v) => vmVehicle.onTextChanged(() {
              if (v.isEmpty) {
                vmVehicle.trailorfunction();
              } else {
                vmVehicle.semifueltrucksearchfunction();
              }
            }),
            searchTap: () {},
          ),
          gapFieldVeh,
          Observer(
            builder: (BuildContext context) {
              return Expanded(
                child: ListView.separated(
                  itemCount:
                      vmVehicle.semitrailorPageResponse.data?.length ?? 0,
                  separatorBuilder: (BuildContext context, int index) =>
                      gapFieldVeh,
                  itemBuilder: (context, index) => showData(
                      data: vmVehicle.semitrailorPageResponse.data?[index],
                      status: vmVehicle.vehicleStatusType),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
