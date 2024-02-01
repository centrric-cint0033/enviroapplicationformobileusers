import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/sales_page/sales_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: cmn_leading_icon(),
        title: cmnTitleWidget('HOME'),
        actions: cmn_action_icon,
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            GestureDetector(
              onTap: () => salesfunction(context),
              child: _buildBox(
                'assets/images/star.svg',
                'Sales',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            _buildBox(
              'assets/images/truck.svg',
              'Vehicle',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            GestureDetector(
              onTap: () => ohsfunction(context),
              child: _buildBox(
                'assets/images/move(1).svg',
                'OH&S',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            _buildBox(
              'assets/images/user.svg',
              'Site',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            _buildBox(
              'assets/images/calendar.svg',
              'Scheduling',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            _buildBox(
              'assets/images/globe.svg',
              'Intranet',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            _buildBox(
              'assets/images/users.svg',
              'Team',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String svgPath, String text, Color iconColor,
      {double width = 15.0, double height = 15.0}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            width: width,
            height: height,
            color: iconColor,
          ),
          const SizedBox(height: 8.0),
          Text(text),
        ],
      ),
    );
  }
}

void salesfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.salesmainpage);
  print('Notification button tapped!');
}

void ohsfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.OhsPage);
  print('Notification button tapped!');
}
