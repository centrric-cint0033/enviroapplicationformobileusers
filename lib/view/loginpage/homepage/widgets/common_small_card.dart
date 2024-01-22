import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class common_card extends StatelessWidget {
  const common_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Appthemes.textfieldbcColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Suresh Ramakrishnan',
                  style: TextStyle(fontSize: 18),
                ),
                Text(
                  'Job ID: 3117',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  '12:00 AM - 12:00 AM',
                  style: TextStyle(fontSize: 16),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Completed'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 2),
          Container(
            width: 600.sp,
            child: const Card(
              color: Colors.blue,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Drivers',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Vehicele Assigned',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Amobile testerHehe',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Staging vehicles',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Apisamirewsalato',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Enviro textcaesw',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 12.0, right: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'brettdyson',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'cdevferftbg',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
