import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';

import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/01_auth/auth_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      // appBar: const CustomAppBar(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                sized0hx50,
                sized0hx10,
                CommonImage(
                  width: 130.w,
                  height: 130.w,
                  imagepath: ImageConstant.imagePath,
                ),
                // const Text(
                //   style: TextStyle(
                //       fontSize: 35,
                //       fontWeight: FontWeight.w900,
                //       color: Appthemes.bluecolor),
                // ),

                SizedBox(
                  height: 74.w,
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
                    textStyle: TextStyle(fontSize: 11.sp),
                    prefixIcon: Icon(
                      Icons.email,
                      size: 16.sp,
                    ),
                  ),
                ),

                Observer(builder: (context) {
                  return SizedBox(
                    height: 74.w,
                    child: Cmformfield(
                      controller: vmAuth.passwordController,
                      obscureText: !vmAuth.passObscure,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Password';
                        }
                        return null;
                      },
                      prefixIcon: Icon(
                        Icons.lock,
                        size: 16.sp,
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            vmAuth.passObscure = !vmAuth.passObscure;
                          },
                          child: Icon(
                            vmAuth.passObscure == false
                                ? Icons.visibility_off
                                : Icons.visibility,
                            size: 16.sp,
                          )),
                      keyboardType: TextInputType.visiblePassword,
                      hinttext: "Password or Phonenumber",
                      textStyle: TextStyle(fontSize: 11.sp),
                    ),
                  );
                }),
                sized0hx20,
                Observer(builder: (_) {
                  return CmButton(
                    width: MediaQuery.of(context).size.width - 60.w,
                    loading: vmAuth.loginResponse.loading,
                    buttonTextStyle:
                        TextStyle(color: Colors.white, fontSize: 11.sp),
                    indicatorColor: Colors.white,
                    onPressed: () {
                      ontaplogin(context);
                    },
                    text: "Login",
                  );
                }),
                sized0hx30,
                Center(
                  child: Text(
                    "If you experience any Authentication isssues kindly contact the manager or higher authorities,They will resolve your issues...",
                    style: TextStyle(
                        fontSize: 11.sp,
                        color: Appthemes.textColor,
                        fontStyle: FontStyle.italic),
                  ),
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
        context: context,
        username: vmAuth.userNameController.text.trim(),
        password: vmAuth.passwordController.text.trim(),
      );

      if (statusCode != null) {
        vmProfile.profileviewmodelfunction();
        vmProfile.getPermissionStatus();
        router.replaceNamed(RouteNames.rHomePage);
      }
    }
  }
}
