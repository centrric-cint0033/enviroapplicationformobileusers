import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/cmn_title_textwidget.dart';
import '../02_sales/sales_widgets.dart/sales_widget.dart';
import '../../model/03_vehicle/vehicle_model/vehicle_model.dart';

@RoutePage()
class VehicleDetailPage extends StatelessWidget {
  final VehicleModel data;
  const VehicleDetailPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Vehicle'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: buildCardDataOrder(
            [
              sized0hx10,
              expandedRowShowText(
                  "Vehicle", data.registration?.toString() ?? ""),
              sized0hx10,
              expandedRowShowText("Vehicle Type", data.vehicleType ?? ""),
              sized0hx10,
              expandedRowShowText("Types", data.types ?? ""),
              sized0hx10,
              expandedRowShowText("Year", data.year?.toString() ?? ""),
              sized0hx10,
              expandedRowShowText("Transmission", data.transmission ?? ""),
              sized0hx10,
              expandedRowShowText("Fuel", data.fuel ?? ""),
              sized0hx10,
              expandedRowShowText("Height", data.height ?? ""),
              sized0hx10,
              expandedRowShowText("Width", data.width ?? ""),
              sized0hx10,
              expandedRowShowText("Length", data.length ?? ""),
              sized0hx10,
              expandedRowShowText("Litres", data.litres ?? ""),
              sized0hx10,
              expandedRowShowText("Vin number", data.vinNumber ?? ""),
              sized0hx10,
              expandedRowShowText("Axies", data.axies ?? ""),
              sized0hx10,
              expandedRowShowText("Due Rego", data.dueRego ?? ""),
              sized0hx10,
              expandedRowShowText("Engine numbers", data.engineNumbers ?? ""),
              sized0hx10,
            ],
          ),
        ),
      ),
    );
  }
}
