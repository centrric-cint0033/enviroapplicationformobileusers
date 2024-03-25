import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';

import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../widgets/cmappbar.dart';
import '../../widgets/cmcustomformfield.dart';
import '../../widgets/cmimage.dart';
import '../../utilis/imagepath.dart';

@RoutePage()
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  // final TextEditingController userNameController = TextEditingController();

  // final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                Container(
                  height: 79,
                  child: Cmformfield(
                    controller: vmAuth.userNameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Username';
                      }
                      return null;
                    },
                    keyboard: TextInputType.text,
                    hinttext: 'Username or Email',
                    width: 335,
                    height: 48,
                    cursorHeight: 25,
                    prefixIcon: const Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 24),
                Container(
                  height: 79,
                  child: Cmformfield(
                    controller: vmAuth.passwordController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                    prefixIcon: const Icon(
                      Icons.lock,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    hinttext: "Password or phonenumber",
                  ),
                ),
                const SizedBox(height: 64),
                Observer(builder: (_) {
                  return CmButton(
                    buttonTextStyle:
                        const TextStyle(color: Appthemes.textColor),
                    onPressed: () {
                      ontaplogin(context);
                    },
                    text: "Login",
                  );
                }),
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
      ),
    );
  }

  ontaplogin(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      final router = context.router;

      int? statusCode = await vmAuth.login(
        username: vmAuth.userNameController.text.trim(),
        password: vmAuth.passwordController.text.trim(),
      );

      if (statusCode != null) {
        router.replaceNamed(RouteNames.rHomePage);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Color(0XFF061933),
            content: Text(
              'Invalid username or password. Please try again.',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }
}
