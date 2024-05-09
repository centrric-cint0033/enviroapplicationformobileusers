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
        child: buildCardDataOrder(
          [
            expandedRowShowText("Vehicle", data.vehicle?.toString() ?? ""),
            expandedRowShowText("Vehicle Type", data.vehicleType ?? ""),
            expandedRowShowText("Types", data.types ?? ""),
            expandedRowShowText("Year", data.year?.toString() ?? ""),
            expandedRowShowText("Transmission", data.transmission ?? ""),
            expandedRowShowText("Fuel", data.fuel ?? ""),
            expandedRowShowText("Height", data.height ?? ""),
            expandedRowShowText("Width", data.width ?? ""),
            expandedRowShowText("Length", data.length ?? ""),
            expandedRowShowText("Litres", data.litres ?? ""),
            expandedRowShowText("Vin number", data.vinNumber ?? ""),
            expandedRowShowText("Axies", data.axies ?? ""),
            expandedRowShowText("Due Rego", data.dueRego ?? ""),
            expandedRowShowText("Engine numbers", data.engineNumbers ?? ""),
          ],
        ),
      ),
    );
  }
}
