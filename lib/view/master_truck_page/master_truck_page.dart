import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MasterTruckPage extends StatelessWidget {
  const MasterTruckPage({Key? key}) : super(key: key);

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
                return Container(width: 68, child: const Card());
              }),
              _buildAdditionalCard(),
              const SizedBox(height: 16.0),
              _buildJobCard(
                date: "2024-02-01",
                clientId: "123",
                clientName: "John Doe",
                quotedId: "456",
                amount: "56",
                status: "Accepted",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalCard() {
    List<String> vehicles = [];
    if (vmvehicle.allvehiclelistResponse.data != null) {
      vehicles = vmvehicle.allvehiclelistResponse.data!
          .map((vehicle) => vehicle.registration)
          .toList();
    }
    String? selectedVehicle;

    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                height: 54,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0XFF949494)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: DropdownButtonHideUnderline(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Selected Vehicles'),
                        Expanded(
                          child: DropdownButton<String>(
                            value: selectedVehicle,
                            onChanged: (String? newValue) {
                              selectedVehicle = newValue;
                            },
                            items: vehicles.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJobCard({
    required String date,
    required String clientId,
    required String clientName,
    required String quotedId,
    required String amount,
    required String status,
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
              Text("Date         : $date"),
              const SizedBox(height: 8.0),
              Text("Client ID    : $clientId"),
              const SizedBox(height: 8.0),
              Text("Client Name  : $clientName"),
              const SizedBox(height: 8.0),
              Text("Quoted ID    : $quotedId"),
              const SizedBox(height: 8.0),
              Text("Amount       : $amount"),
              const SizedBox(height: 8.0),
              Text("Status       : $status"),
            ],
          ),
        ),
      ),
    );
  }
}
