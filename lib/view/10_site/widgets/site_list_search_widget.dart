import 'package:flutter/material.dart';

import '../../../widgets/search_field.dart';
import '../../../view_model/10_site/site_view_model.dart';

class SiteListSearchWidget extends StatelessWidget {
  final int selectedTab;
  const SiteListSearchWidget({
    super.key,
    required this.selectedTab,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SearchField(
        ctr: vmSite.searchCtr,
        hint: "Search Site by Name",
        onChanged: (String data) {
          vmSite.searchSites(
            key: data,
            type: _getSiteType(selectedTab),
          );
        },
      ),
    );
  }
}

SiteType _getSiteType(int tab) {
  switch (tab) {
    case 0:
      return SiteType.permananet;
    case 1:
      return SiteType.temporary;
    case 2:
      return SiteType.deleted;
    default:
      return SiteType.permananet;
  }
}
