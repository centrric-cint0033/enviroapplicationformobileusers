import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../widgets/cmappbar.dart';
import '../../widgets/cmn_action_icon.dart';
import '../../widgets/cmn_leading_icon.dart';
import '../../widgets/cmn_title_textwidget.dart';

@RoutePage()
class SiteListScreen extends StatelessWidget {
  const SiteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const cmn_leading_icon(),
        title: cmnTitleWidget('Site'),
        actions: cmn_action_icon,
      ),
    );
  }
}
