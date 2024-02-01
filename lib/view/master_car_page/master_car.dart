import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';

class MasterCarpage extends StatelessWidget {
  const MasterCarpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              common_search_widget(),
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
          side: BorderSide(
            color: const Color(0XFF949494),
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
              Text("Client Name  :  $clientName"),
              const SizedBox(height: 8.0),
              Text("Quoted ID    : $quotedId"),
            ],
          ),
        ),
      ),
    );
  }
}
