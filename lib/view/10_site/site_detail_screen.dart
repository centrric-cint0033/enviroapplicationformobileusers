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

@RoutePage()
class SiteDetailScreen extends StatelessWidget {
  final int index;
  final SiteType type;
  const SiteDetailScreen({super.key, required this.index, required this.type});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        late SiteResModel site;
        switch (type) {
          case SiteType.permananet:
            site = vmSite.permanentSiteResponse.data![index];
            break;
          case SiteType.temporary:
            site = vmSite.tempSiteResponse.data![index];
            break;
          case SiteType.deleted:
            site = vmSite.delSiteResponse.data![index];
            break;
          default:
        }
        Map<String, String> map = {
          "Site Name": site.clientName ?? "",
          "Site Email": site.clientEmail ?? "",
          "Site Address": site.siteAddress ?? "",
          "Site Postcode": site.sitePostCode ?? "",
          "Site Contact": site.companyContactNumber ?? "",
          "Site Phone": site.sitePhoneNo ?? "",
          "Site Mobile No": site.siteContactMob ?? "",
          "Induction Required": site.inductionRequiredStr ?? "",
          "Induction Type": site.industryType?.toString() ?? "",
          "ABN Number": site.abn ?? "",
        };
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  sized0hx10,
                  Divider(color: Colors.grey.shade200),
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
                    if (data.value.isNotEmpty) ...{
                      sized0hx10,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: KeyValueTextWidget(
                          maxLines: 4,
                          keyName: data.key,
                          value: data.value,
                        ),
                      ),
                    }
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
                  sized0hx10,
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
