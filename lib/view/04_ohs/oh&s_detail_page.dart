import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/widgets/cmappbar.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class OhsDetailPage extends StatelessWidget {
  final OhsRespModel data;

  const OhsDetailPage({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const cmn_leading_icon(),
        title: cmnTitleWidget('OH&S'),
        actions: cmn_action_icon,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              width: 390,
              height: 262.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Card(
                color: const Color.fromARGB(255, 188, 209, 228),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return Text(
                        data.title ?? '',
                      );
                    }),
                    const SizedBox(
                      height: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          data.created_by ?? '',
                        ),
                        Text(
                          data.description ?? '',
                        ),
                        Text(
                          data.edited_date_time ?? '',
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),

                    const SizedBox(
                      height: 8,
                    ),
                    // Text(
                    //   data?.edited_date_time ?? '',
                    // ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        side: MaterialStateProperty.all<BorderSide>(
                          const BorderSide(color: Colors.black),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 188, 209, 228),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      ),
                      child: const Text(
                        ' Open file ',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 38,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.black),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFEBE8E8),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    ' Edit ',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    side: MaterialStateProperty.all<BorderSide>(
                      const BorderSide(color: Colors.black),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFEBE8E8),
                    ),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                  child: const Text(
                    ' Delete ',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 48.h),
        ],
      ),
    );
  }
}
