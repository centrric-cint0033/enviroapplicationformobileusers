import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
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
              common_search_widget(),
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
                          amount: data?.paid_amount ?? "",
                          status: data?.paid_status ?? "",
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
    // required int clientId,
    required String clientName,
    required String quotedby,
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13.0),
                  const Expanded(
                    child: Text(
                      "Date:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 13.0),
                  Expanded(
                    child: Text(
                      " $date",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13.0),
                  const Expanded(
                    child: Text(
                      "clientName:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 13.0),
                  Expanded(
                    child: Text(
                      "$clientName",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13.0),
                  const Expanded(
                    child: Text(
                      "Quoted By:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 13.0),
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
              Row(
                children: [
                  const SizedBox(height: 13.0),
                  const Expanded(
                    child: Text(
                      "Amount:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 13.0),
                  Expanded(
                    child: Text(
                      "$amount",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 13.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 13.0),
                  const Expanded(
                    child: Text(
                      "Status:",
                      textAlign: TextAlign.right,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 13.0),
                  Expanded(
                    child: Text(
                      "$status",
                      textAlign: TextAlign.left,
                      style: const TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
