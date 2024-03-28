import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';

import 'widgets/icon_widget.dart';
import 'widgets/key_value_text_widget.dart';
import '../../widgets/cmn_title_textwidget.dart';
import 'widgets/site_folder_list_data_widget.dart';
import '../11_previous_sale/widgets/previous_sales_widget.dart';
import '../../model/10_site/folder_res_model/folder_res_model.dart';
import '../../view_model/11_previous_sale/previous_sale_view_model.dart';

@RoutePage()
class SiteDetailScreen extends StatelessWidget {
  final int index;
  final SiteType type;
  const SiteDetailScreen({super.key, required this.index, required this.type});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => vmPreviousSale.previousSalesPagination(),
    );
    return Observer(
      builder: (context) {
        SiteResModel? site = _getSite(index: index, type: type);
        Map<String, String> map = _getSiteMap(site!);
        Map<String, String> company = _getEntityMap(site);
        List<Folder> folders = _getFolderData();
        return Scaffold(
          appBar: AppBar(
            elevation: 1,
            title: cmnTitleWidget("Site Profile"),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              controller: vmPreviousSale.previousSaleController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Divider(color: Colors.grey.shade200),
                  sized0hx10,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sized0wx20,
                      IconWidget(length: 60.h),
                      const Spacer(),
                      // CommonTextBtn(
                      //   btnText: "Edit",
                      //   onTap: () {},
                      // ),
                      // sized0wx20,
                    ],
                  ),
                  for (MapEntry<String, String> data in map.entries) ...{
                    sized0hx10,
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: KeyValueTextWidget(
                        maxLines: 4,
                        keyName: data.key,
                        value: ":${data.value}",
                      ),
                    ),
                  },
                  sized0hx10,
                  Container(
                    height: 35.h,
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    color: Appthemes.themeData.dividerColor,
                    padding: EdgeInsets.only(left: 10.w),
                    child: Text(
                      "Company and Invoicing Details",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(fontSize: 13.sp),
                    ),
                  ),
                  for (MapEntry<String, String> data in company.entries) ...{
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.w, vertical: 10.h),
                      child: KeyValueTextWidget(
                        maxLines: 4,
                        keyName: data.key,
                        value: data.value,
                        keyStyle:
                            Theme.of(context).textTheme.titleSmall?.copyWith(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                      ),
                    ),
                  },
                  sized0hx10,
                  SiteFolderListWidget(folders: folders),
                  sized0hx10,
                  const PreviouseSalesWidget(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List<Folder> _getFolderData() {
  try {
    return vmSite.siteFolderResponse.data?.folders?.first.folders ?? [];
  } catch (e) {
    return [];
  }
}

SiteResModel? _getSite({required int index, required SiteType type}) {
  switch (type) {
    case SiteType.permananet:
      return vmSite.permanentSiteResponse.data![index];
    case SiteType.temporary:
      return vmSite.tempSiteResponse.data![index];
    case SiteType.deleted:
      return vmSite.delSiteResponse.data![index];
    default:
      return null;
  }
}

Map<String, String> _getSiteMap(SiteResModel site) => {
      "Site Name": site.clientName ?? "",
      "Site Email": site.clientEmail ?? "",
      "Site Address": site.siteAddress ?? "",
      "Site Postcode": site.sitePostCode ?? "",
      "Site Contact": site.siteContactMob ?? "",
      "Site Phone": site.sitePhoneNo ?? "",
      "Site Mobile No": site.siteContactMob ?? "",
      "Induction Required": site.inductionRequiredStr ?? "",
      "Induction Type": site.industryType?.toString() ?? "",
      "ABN Number": site.abn ?? "",
    };
Map<String, String> _getEntityMap(SiteResModel site) => {
      "Entity Name": site.companyName ?? "",
      "Entity Address": site.companyAddress ?? "",
      "Entity Phone Number": site.companyLandlineNumber ?? "",
      "Entity Email": site.companyEmail ?? "",
      "Entity Postcode": site.companyPostcode ?? "",
      "Term of account": site.invoiceTermsOfAccount ?? "",
      "Account Status": site.accountStatus ?? "",
      "Reason For Cancelling": site.reasonForCancelling ?? "",
      "Payment Type": site.paymentTypeStr ?? "",
      "Purchase No": site.invoicePurchaseNo ?? "",
      "Price": site.price ?? "",
      "Sale Person": site.salesPerson ?? "",
    };
