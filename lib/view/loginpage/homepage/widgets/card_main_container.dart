import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmbutton.dart';
import 'package:flutter/material.dart';

class CardMainContainer extends StatelessWidget {
  const CardMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Appthemes.textfieldbcColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      child: Card(
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Text(
                            'Assigned primary',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        color: Colors.black,
                        iconSize: 44,
                        onPressed: () {},
                        icon: const Icon(Icons.account_circle),
                      ),
                      const SizedBox(width: 38),
                      const Text('Richard Fudge', textAlign: TextAlign.center),
                      const SizedBox(width: 35),
                      const CmButton(
                        color: Color.fromARGB(255, 76, 175, 109),
                        width: 53,
                        height: 29,
                        borderRadius: 17,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text("Day                 : Monday"),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text("Time               : 9:00 AM"),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text("Type                : Meeting"),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text("Company        : ABC Inc."),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text("Status              :Scheduled"),
                  ),
                  Container(
                    width: 700,
                    height: 90,
                    child: const Card(
                      color: Colors.blue,
                      child: Text(
                        "Drivers and vehicles",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
