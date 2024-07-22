import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class VehicleListDropDown extends StatelessWidget {
  final VehicleModel? vehicle;

  const VehicleListDropDown({super.key, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    vmVehicle.selectedVehicleDrodown = vehicle?.registration ?? "";
    return Observer(
      builder: (context) {
        final res = vmVehicle.vehicleListResponse;
        List<VehicleModel>? vehicles = res.data;
        vmVehicle.selectedVehiclee = vehicles?.firstWhere(
          (vehiclee) => vehiclee.registration == vehicle?.registration,
          orElse: () => VehicleModel(registration: ""),
        );

        return res.loading
            ? const CupertinoActivityIndicator()
            : DropdownButtonFormField<VehicleModel>(
                icon: const Icon(Icons.keyboard_arrow_down_outlined),
                items: vehicles?.map(
                  (VehicleModel vehicle) {
                    return DropdownMenuItem(
                      value: vehicle,
                      child: Text(
                        vehicle.registration ?? "",
                        style: TextStyle(fontSize: 10.sp),
                      ),
                    );
                  },
                ).toList(),
                isExpanded: true,
                value: vmVehicle.selectedVehiclee,
                onChanged: (newValue) {
                  vmVehicle.selectedVehiclee = newValue;
                },
                // value: selectedTax,
                decoration: const InputDecoration.collapsed(hintText: ''),
              );
      },
    );
  }
}
