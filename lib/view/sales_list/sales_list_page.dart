import 'package:enviro_mobile_application/viewmodel/quote_reg_page/quote_reg_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SalesListPage extends StatelessWidget {
  const SalesListPage({Key? key}) : super(key: key);

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
                          itemCount:
                              vmquotereg.quoteRegResponse.data?.length ?? 0,
                          separatorBuilder: (BuildContext context, int index) =>
                              const SizedBox(height: 12.0),
                          itemBuilder: (context, index) {
                            var data = vmquotereg.quoteRegResponse.data?[index];
                            return _buildJobCard(
                              id: data?.id ?? 0,
                              won_lose_status: data?.won_lose_status ?? "",
                              created_by: data?.created_by ?? "",
                              client_type: data?.client_type ?? "",
                              schedule_id: data?.schedule_id ?? "",
                              client_email: data?.client_email ?? "",
                            );
                          }));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJobCard({
    required int id,
    required String won_lose_status,
    required String created_by,
    required String client_type,
    required String schedule_id,
    required String client_email,
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
              Text("id        : $id"),
              const SizedBox(height: 8.0),
              Text("Client ID    : $won_lose_status"),
              const SizedBox(height: 8.0),
              Text("Client Name  : $created_by"),
              const SizedBox(height: 8.0),
              Text("Quoted ID    : $client_type"),
              const SizedBox(height: 8.0),
              Text("Client Name  :  $schedule_id"),
              const SizedBox(height: 8.0),
              Text("Quoted ID    : $client_email"),
            ],
          ),
        ),
      ),
    );
  }
}
