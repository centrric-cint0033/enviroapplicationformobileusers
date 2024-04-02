import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/widgets/common_search_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
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
                      child: vmSales.joblistResponse.loading
                          ? wwCustomLoader()
                          : vmSales.joblistResponse.errors != null
                              ? wwErrorData(
                                  onTap: () {},
                                  mainFailure: vmSales.joblistResponse.errors)
                              : const SalesListWidget());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SalesListWidget extends StatelessWidget {
  const SalesListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: vmSales.joblistResponse.data?.length ?? 0,
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(height: 12.0);
      },
      itemBuilder: (context, index) {
        var data = vmSales.joblistResponse.data?[index];
        return _buildJobCard(
          date: data?.date ?? "",
          clientName: data?.clientName ?? "",
          quotedby: data?.quotedBy ?? "",
          amount: data?.paidAmount ?? "",
          status: data?.status ?? "",
        );
      },
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
    return customCard(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            expandedRowShowText('Date', ': $date'),
            gapField,
            expandedRowShowText('clientName', ': $clientName'),
            gapField,
            expandedRowShowText('Quoted By', ': $quotedby'),
            gapField,
            expandedRowShowText('Amount', ': $amount'),
            gapField,
            expandedRowShowText('Status', ': $status'),
          ],
        ),
      ),
    );
  }
}
