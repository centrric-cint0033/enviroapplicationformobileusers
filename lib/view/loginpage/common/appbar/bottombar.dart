import 'package:flutter/material.dart';

class CommonBottombar extends StatelessWidget {
  const CommonBottombar({Key? key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      height: 98,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildNavItem(Icons.add_home_work_rounded, 'Home', () {}),
          _buildNavItem(Icons.calendar_month_rounded, 'Calendar', () {}),
          _buildNavItem(Icons.weekend_outlined, 'Weekend', () {}),
          _buildNavItem(Icons.fire_truck_outlined, 'Emergency', () {}),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, VoidCallback onPressed) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
        Text(label),
      ],
    );
  }
}
