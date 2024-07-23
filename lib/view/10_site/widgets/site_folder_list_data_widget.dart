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
    // List<Folder> data = folderData.data?.folders?.first.folders ?? [];

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
                            // vmIntranet.folderNames.clear();
                            // vmIntranet.getIntranetFoldersApi(
                            //     parentFolderId: data.id ?? 1);
                            // vmIntranet.folderNames.add("${data.name}");
                            // vmIntranet.parentFolderId = data.id ?? 1;
                            // vmIntranet.searchType = folderList.folders?[0].type;
                            // vmIntranet.fileFolderSearchCntrlr.text = "";
                            context.router.push(SiteFolderDetailRoute(
                                folderName: data.name, searchType: data.type));
                          },
                          folderName: data.name,
                          editTap: (s) {
                            // vmIntranet.editIntranetFolderApi(
                            //     name: s,
                            //     folderId: data.id ?? 0,
                            //     parentFolderId: 1,
                            //     context: context,
                            //   )
                          },
                          deleteTap: () {
                            //  vmIntranet.deleteIntranetFolderApi(
                            //   folderId: data.id ?? 0,
                            //   context: context,
                            //   parentFolderId: 1)
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

// class SiteFolderListView extends StatelessWidget {
//   const SiteFolderListView({
//     super.key,
//     required this.folders,
//   });

//   final List<Folder> folders;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.separated(
//       shrinkWrap: true,
//       itemCount: folders.length,
//       physics: const NeverScrollableScrollPhysics(),
//       separatorBuilder: (context, index) => sized0hx10,
//       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//       itemBuilder: (context, index) {
//         Folder folder = folders[index];
//         return WWFolderCard1(
//           folder: folder,
//           deleteTap: () {},
//           editTap: () {},
//         );
//       },
//     );
//   }
// }

// class WWFolderCard1 extends StatelessWidget {
//   final Folder folder;
//   final Function() editTap;
//   final Function() deleteTap;

//   const WWFolderCard1({
//     super.key,
//     required this.folder,
//     required this.editTap,
//     required this.deleteTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       color: Colors.grey.shade200,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(10.0),
//       ),
//       child: ListTile(
//         contentPadding: const EdgeInsets.only(left: 20),
//         leading: const Icon(
//           Icons.folder,
//           color: Colors.black54,
//         ),
//         title: Text(
//           folder.name ?? "",
//           overflow: TextOverflow.ellipsis,
//           style: Theme.of(context).textTheme.bodySmall,
//         ),
//         trailing: SizedBox(
//           width: 80.w,
//           child: Row(
//             children: [
//               CommonIconBtnWidget(
//                 icon: Icons.edit,
//                 onTap: editTap,
//               ),
//               CommonIconBtnWidget(
//                 icon: Icons.delete_forever,
//                 onTap: deleteTap,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
