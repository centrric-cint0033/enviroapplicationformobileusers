import 'package:enviro_mobile_application/viewmodel/home_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CommonBottombar extends StatelessWidget {
  const CommonBottombar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<BottomNavigationBarItem> items = [
          const BottomNavigationBarItem(
            backgroundColor: Colors.black12,
            icon: Icon(
              Icons.home,
              color: Colors.red,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Colors.green,
            ),
            label: 'Calendar',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.today,
              color: Colors.orange,
            ),
            label: 'Week',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              color: Colors.purple,
            ),
            label: 'Vehicle',
          ),
        ];

        return BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.blue,
          items: items,
          onTap: (index) {
            vmselection.setCurrentIndex(index);
          },
        );
      },
    );
  }
}
