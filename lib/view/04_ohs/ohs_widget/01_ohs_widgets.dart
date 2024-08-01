import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WWcard extends StatelessWidget {
  const WWcard({
    super.key,
    required this.data,
  });

  final OhsRespModel? data;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Appthemes.cWhite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            data?.dp != null
                ? Container(
                    height: 38.w,
                    width: 38.w,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: CachedNetworkImageProvider(data!.dp!)),
                        shape: BoxShape.circle),
                    // child: CachedNetworkImage(
                    //     height: 50.w,
                    //     width: 50.w,
                    //     imageUrl: data!.dp!,
                    //     fit: BoxFit.cover),
                  )
                : const Placeholder(),
            sized0wx10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  showBlackText(data?.title ?? '',
                      maxLines: 2,
                      fontWeight: FontWeight.bold,
                      overflow: TextOverflow.ellipsis),
                  sized0hx05,
                  showBlackText(data?.created_by ?? '')
                ],
              ),
            ),
            sized0wx05,
            Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Appthemes.cPrimary),
                    borderRadius: BorderRadius.circular(12.w)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  child: showBlueText('View', fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    );
  }
}
