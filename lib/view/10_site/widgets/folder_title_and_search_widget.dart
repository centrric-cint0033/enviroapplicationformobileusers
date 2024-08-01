import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Folders'),
          ),
          CmButton(
              height: 35.w,
              text: 'Add folders+',
              onPressed: () {
                showCreateEditDialog(context, createEditTap: (v) {
                  vmSite.addSiteFolderApi(
                    siteId: id ?? 0,
                    context: context,
                    name: v,
                    parentfolder: 1,
                  );
                });
              }),
        ]),
        sized0hx10,
        WWTextField(
          controller: vmSite.siteFolderCtr,
          onChanged: (v) => vmSite.onTextChanged(() =>
              vmSite.siteFolderCtr.text.isEmpty
                  ? vmSite.getSiteFolderss(id: id ?? 0, parentFolderId: 1)
                  : vmSite.siteFolderSearchApi(
                      v, 1, vmSite.searchType ?? "", id ?? 0)),
          suffixTap: () {},
          hintText: 'Search by Folder Name',
        ),
        sized0hx10,
        // WWTextField(
        //   controller: vmSite.siteFolderCtr,
        //   hintText: 'Search by folder name',
        //   onChanged: _onChanged,
        // ),
      ],
    );
  }
}
