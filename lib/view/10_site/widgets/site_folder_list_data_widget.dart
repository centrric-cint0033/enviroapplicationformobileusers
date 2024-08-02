import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import '../../../utilis/constant.dart';

class SiteFolderListWidget extends StatelessWidget {
  final int? id;
  const SiteFolderListWidget({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final res = vmSite.siteFoldersResponse;
      FolderListModel? folderList = res.data;
      return folderList?.folders != null && folderList!.folders!.isNotEmpty
          ? res.loading
              ? wwCustomLoader()
              : ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (BuildContext context, int index) =>
                      sized0hx10,
                  itemCount: folderList.folders?[0].folders?.length ?? 0,
                  itemBuilder: (context, index) {
                    var data = folderList.folders?[0].folders?[index];
                    if (data != null) {
                      return WWFolderCard(
                          folder: data,
                          onTap: () async {
                            vmSite.folderNames.clear();
                            vmSite.getSiteFolderss(
                                id: id ?? 0, parentFolderId: data.id ?? 1);
                            vmSite.folderNames.add("${data.name}");
                            vmSite.parentFolderId = data.id ?? 1;
                            vmSite.searchType = data.type;
                            vmSite.fileFolderSearchCntrlr.text = "";
                            context.router.push(SiteFolderDetailRoute(
                                folderName: data.name,
                                searchType: vmSite.searchType,
                                siteId: id ?? 0));
                          },
                          folderName: data.name,
                          editTap: (s) {
                            vmSite.editSiteFolderApi(
                                name: s,
                                folderId: data.id ?? 0,
                                parentFolderId: 1,
                                context: context,
                                siteId: id ?? 0);
                          },
                          deleteTap: () {
                            vmSite.deleteSiteFolderApi(
                                siteId: id ?? 0,
                                folderId: data.id ?? 0,
                                context: context,
                                parentFolderId: 1);
                          });
                    } else {
                      return Container();
                    }
                  },
                )
          : Center(
              child: SvgPicture.asset(
                "assets/images/empty1.svg",
              ),
            );
    });
  }
}
