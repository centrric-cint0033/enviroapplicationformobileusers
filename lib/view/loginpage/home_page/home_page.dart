import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({Key? key}) : super(key: key);

  void _handleNotificationButtonTap() {
    print('Notification button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        actions: [
          IconButton(
            iconSize: 32,
            icon: Icon(Icons.notifications),
            onPressed: _handleNotificationButtonTap, // Remove the parentheses
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildBox(
              'assets/images/star.svg',
              'Sales',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            _buildBox(
              'assets/images/truck.svg',
              'Vehicle',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            _buildBox(
              'assets/images/move(1).svg',
              'OH&S',
              Colors.blue,
              width: 30.0,
              height: 30.0,
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
      {double width = 30.0, double height = 30.0}) {
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
