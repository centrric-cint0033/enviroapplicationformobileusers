import 'package:enviro_mobile_application/viewmodel/sales_performance/sales_performance_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';

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
              // common_search_widget(),
              const SizedBox(height: 16.0),
              Observer(
                builder: (_) {
                  return Expanded(
                    child: Observer(builder: (_) {
                      return ListView.separated(
                        itemCount:
                            vmsalesperformance.salespageResponse.data?.length ??
                                0,
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(height: 12.0);
                        },
                        itemBuilder: (context, index) {
                          var data =
                              vmsalesperformance.salespageResponse.data?[index];
                          return _buildJobCard(
                            won: data?.won,
                            lost: data?.lost,
                            pending: data?.pending,
                            // profile: data?.profile,
                            total: data?.total,
                          );
                        },
                      );
                    }),
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
    required int? won,
    required int? lost,
    required int? pending,
    required int? total,
    // required String? profile,
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
              Text(
                "won: ${won ?? ''}",
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 8.0),
              // Text(
              //   "name: $name",
              //   style: const TextStyle(color: Colors.blue),
              // ),
              const SizedBox(height: 8.0),
              Text(
                "lost: ${lost ?? ''}",
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 8.0),
              Text(
                "pending: ${pending ?? ''}",
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 8.0),
              Text(
                "total: ${total ?? ''}",
                style: const TextStyle(color: Colors.blue),
              ),
              const SizedBox(height: 8.0),
              // Text(
              //   // "profile: $profile",
              //   style: const TextStyle(color: Colors.blue),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
