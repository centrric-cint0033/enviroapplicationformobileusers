import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utilis/constant.dart';
import '../../../widgets/common_icon_btn_widget.dart';
import '../../../model/10_site/folder_res_model/folder_res_model.dart';

class SiteFolderListWidget extends StatelessWidget {
  final List<Folder> folders;
  const SiteFolderListWidget({super.key, required this.folders});

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
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 20),
            leading: const Icon(
              Icons.folder,
              color: Colors.black26,
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
                    onTap: () {},
                  ),
                  CommonIconBtnWidget(
                    icon: Icons.delete,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
