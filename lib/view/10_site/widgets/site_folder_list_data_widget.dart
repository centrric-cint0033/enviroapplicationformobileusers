import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utilis/constant.dart';
import '../../../widgets/common_icon_btn_widget.dart';
import '../../../model/10_site/folder_res_model/folder_res_model.dart';

class SiteFolderListWidget extends StatelessWidget {
  final int? id;

  final ApiResponse<FolderResModel> folderData;
  const SiteFolderListWidget({super.key, required this.folderData, this.id});

  @override
  Widget build(BuildContext context) {
    List<Folder> data = folderData.data?.folders?.first.folders ?? [];
    return WWResponseHandler(
        data: folderData,
        isEmpty: data.isEmpty,
        onTap: () => vmSite.getSiteFolders(id: id ?? 0),
        child: SiteFolderListView(folders: data));
  }
}

class SiteFolderListView extends StatelessWidget {
  const SiteFolderListView({
    super.key,
    required this.folders,
  });

  final List<Folder> folders;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: folders.length,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => sized0hx10,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      itemBuilder: (context, index) {
        Folder folder = folders[index];
        return WWFolderCard1(
          folder: folder,
          deleteTap: () {},
          editTap: () {},
        );
      },
    );
  }
}

class WWFolderCard1 extends StatelessWidget {
  final Folder folder;
  final Function() editTap;
  final Function() deleteTap;

  const WWFolderCard1({
    super.key,
    required this.folder,
    required this.editTap,
    required this.deleteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade200,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.only(left: 20),
        leading: const Icon(
          Icons.folder,
          color: Colors.black54,
        ),
        title: Text(
          folder.name ?? "",
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        trailing: SizedBox(
          width: 80.w,
          child: Row(
            children: [
              CommonIconBtnWidget(
                icon: Icons.edit,
                onTap: editTap,
              ),
              CommonIconBtnWidget(
                icon: Icons.delete_forever,
                onTap: deleteTap,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
