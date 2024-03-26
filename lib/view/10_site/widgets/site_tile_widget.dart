import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';

import 'icon_widget.dart';

class SiteTileWidget extends StatelessWidget {
  final String name, address;
  const SiteTileWidget({super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.grey.shade100,
      contentPadding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 20.w,
      ),
      leading: const IconWidget(),
      title: Column(
        children: [
          KeyValueTextWidget(
            value: name,
            keyName: "Site Name",
          ),
          sized0hx05,
          KeyValueTextWidget(
            value: address,
            keyName: "Site Address",
          )
        ],
      ),
    );
  }
}

class KeyValueTextWidget extends StatelessWidget {
  final String keyName, value;
  const KeyValueTextWidget({
    super.key,
    required this.value,
    required this.keyName,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            keyName,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Expanded(
          child: Text(
            ":$value",
            maxLines: 1,
            style: TextStyle(fontSize: 12.sp),
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
