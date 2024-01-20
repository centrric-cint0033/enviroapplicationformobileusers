import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';

import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmbutton.dart';
import 'package:flutter/material.dart';
import 'common/appbar/cmappbar.dart';
import 'common/appbar/cmcustomformfield.dart';
import 'common/appbar/cmimage.dart';
import 'common/appbar/imagepath/imagepath.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(height: 66),
              CommonImage(
                width: 150,
                height: 150,
                imagepath: ImageConstant.imagePath,
              ),
              // const Text(
              //   style: TextStyle(
              //       fontSize: 35,
              //       fontWeight: FontWeight.w900,
              //       color: Appthemes.bluecolor),
              // ),
              const SizedBox(height: 39),
              const Cmformfield(
                keyboard: TextInputType.emailAddress,
                hinttext: 'Username or Email',
                width: 335,
                height: 48,
                cursorHeight: 25,
                prefixIcon: Icon(Icons.email),
              ),
              const SizedBox(height: 24),
              const Cmformfield(
                prefixIcon: Icon(
                  Icons.lock,
                ),
                keyboardType: TextInputType.visiblePassword,
                cursorHeight: 25,
                hinttext: "Password or phonenumber",
                width: 335,
                height: 48,
              ),
              const SizedBox(height: 64),
              CmButton(
                buttonTextStyle: TextStyle(color: Appthemes.textColor),
                onPressed: () {
                  ontaplogin(context);
                },
                text: "Login",
              ),
              const SizedBox(height: 43),
              const Text(
                "If you experience any Authentication isssues kindly contact the manager or higher authorities, They will resolve your issues...",
                style: TextStyle(
                    fontSize: 16,
                    color: Appthemes.textColor,
                    fontStyle: FontStyle.italic),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void ontaplogin(BuildContext context) {
  context.router.pushNamed(RouteNames.mainscreen);
}
