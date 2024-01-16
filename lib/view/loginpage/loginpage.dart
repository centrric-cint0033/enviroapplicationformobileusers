import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmbutton.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        flexibleSpace: Column(),
      ),
      body: Cmbutton(
        color: Colors.cyan,
        buttonStyle: const ButtonStyle(),
        onPressed: () {
          print('juryjhyj');
        },
      ),
    );
  }
}
