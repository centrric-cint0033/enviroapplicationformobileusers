import 'package:enviro_mobile_application/viewmodel/vehicle_job_list/vehicle_job_list_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class JobListPage extends StatelessWidget {
  const JobListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              const SizedBox(height: 16.0),
              Observer(
                builder: (_) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount: vmjoblists.joblistResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(height: 12.0);
                      },
                      itemBuilder: (context, index) {
                        var data = vmjoblists.joblistResponse.data?[index];
                        return _buildJobCard(
                          date: data?.date ?? "",
                          clientName: data?.client_name ?? "",
                          quotedby: data?.quoted_by ?? "",
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
    required String date,
    // required String clientId,
    required String clientName,
    required String quotedby,
    // required String amount,
    // required String status,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "date:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "$date",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "clientid",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Expanded(
                  //   child: Text(
                  //     "$clientId",
                  //     textAlign: TextAlign.left,
                  //     style: const TextStyle(color: Colors.blue),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "Created By:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "$clientName",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const SizedBox(width: 10),
                  const Expanded(
                    child: Text(
                      "Client Type:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "$quotedby",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Schedule ID:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Expanded(
                  //   child: Text(
                  //     "$amount",
                  //     textAlign: TextAlign.left,
                  //     style: const TextStyle(color: Colors.blue),
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(height: 8.0),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Client Email:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Expanded(
                  //   child: Text(
                  //     "$status",
                  //     textAlign: TextAlign.left,
                  //     style: const TextStyle(color: Colors.blue),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
