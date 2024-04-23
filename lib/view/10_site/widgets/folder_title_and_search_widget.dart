import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import '../../../view_model/10_site/site_view_model.dart';

class FolderTitleAndSearchWidget extends StatelessWidget {
  final int? id;
  const FolderTitleAndSearchWidget({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    _onChanged(String v) =>
        vmSite.onTextChanged(() => vmSite.siteFolderCtr.text.isEmpty
            ? vmSite.getSiteFolders(id: id ?? 0)
            : vmSite.searchSiteFolders(key: v));
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Folders",
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontSize: 13.sp,
                color: Colors.black54,
                fontWeight: FontWeight.bold),
          ),
          sized0hx05,
          WWSearchField(
            controller: vmSite.siteFolderCtr,
            hintText: 'Search by folder name',
            onChanged: _onChanged,
          ),
        ],
      ),
    );
  }
}
