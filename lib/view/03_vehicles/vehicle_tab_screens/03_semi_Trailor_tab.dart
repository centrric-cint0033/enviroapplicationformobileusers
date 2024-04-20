import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SemiTrailersTab extends StatelessWidget {
  const SemiTrailersTab({Key? key}) : super(key: key);

  _onChanged(String v) => vmVehicle.onTextChanged(() {
        v.isEmpty
            ? vmVehicle.semiTrailorApi()
            : vmVehicle.semiTrailorSearchApi(v);
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          WWSearchField(
            controller: vmVehicle.vehicleTextCtr,
            onChanged: _onChanged,
            searchTap: () {},
          ),
          gapFieldVeh,
          Observer(builder: (_) {
            return Expanded(
                child: WWResponseHandler(
                    data: vmVehicle.semiTrailorApiResponse,
                    isEmpty:
                        vmVehicle.semiTrailorApiResponse.data?.isEmpty ?? true,
                    onTap: () => vmVehicle.vehicleTextCtr.text.isNotEmpty
                        ? vmVehicle
                            .semiTrailorSearchApi(vmVehicle.vehicleTextCtr.text)
                        : vmVehicle.semiTrailorApi(),
                    child: const SemiTrailersList()));
          }),
        ],
      ),
    );
  }
}

class SemiTrailersList extends StatelessWidget {
  const SemiTrailersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: vmVehicle.semiTrailorApiResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) => gapFieldVeh,
      itemBuilder: (context, index) => showData(
          data: vmVehicle.semiTrailorApiResponse.data?[index],
          status: vmVehicle.vehicleStatusType),
    );
  }
}
