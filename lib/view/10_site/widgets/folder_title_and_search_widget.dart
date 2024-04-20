import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import '../../../widgets/search_field.dart';
import '../../../view_model/10_site/site_view_model.dart';

class FolderTitleAndSearchWidget extends StatelessWidget {
  const FolderTitleAndSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "   Folders",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 13.sp,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
          sized0hx05,
          SearchField(
            hint: "Search by Folder Name",
            onChanged: (String data) {
              vmSite.searchSiteFolders(key: data);
            },
          ),
        ],
      ),
    );
  }
}
