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
              Icons.schedule,
              color: Colors.blue,
            ),
            label: 'schedule',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.accessibility_new,
              color: Colors.blue,
            ),
            label: 'OH&S',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.public,
              color: Colors.blue,
            ),
            label: 'Intranet',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.directions_car,
              color: Colors.blue,
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
