import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProfileCreationPage extends StatelessWidget {
  ProfileCreationPage({Key? key}) : super(key: key);
  final TextEditingController _controllerphonenumber = TextEditingController();
  final TextEditingController _controlleremail = TextEditingController();
  final TextEditingController _controllerusername = TextEditingController();
  final TextEditingController _controllerpassword = TextEditingController();
  final TextEditingController _controllername = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: cmnDrawer(context),
      appBar: AppBar(
          title: cmnTitleWidget('Profile'),
          actions: [notificationButton(context)]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Container(
                    width: 100.w,
                    height: 100.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                          vmProfile.profilepageResponse.data!.dp!,
                        ))),
                    // child: vmProfile.profilepageResponse.data?.dp != null
                    //     ? Image.network(
                    //         vmProfile.profilepageResponse.data!.dp!,
                    //         fit: BoxFit.cover,
                    //       )
                    //     : Container(),
                  ),
                ),
                sized0hx05,
                Center(
                  child: Text(
                    vmProfile.profilepageResponse.data?.username ?? '',
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),
                sized0hx05,
                Center(
                  child: Text(
                    vmProfile.profilepageResponse.data?.permissionType ?? '',
                    style: TextStyle(fontSize: 13.sp),
                  ),
                ),
                sized0hx20,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 45.w,
                    child: TextFormField(
                      readOnly: true,
                      style: TextStyle(fontSize: 10.sp),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                      controller: _controllername
                        ..text = vmProfile.profilepageResponse.data?.name ?? '',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w))),
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Appthemes.cPrimary,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                sized0hx15,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 45.w,
                    child: TextFormField(
                      readOnly: true,
                      style: TextStyle(fontSize: 11.sp),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the 10 digit"s phonenumber';
                        }
                        return null;
                      },
                      controller: _controllerphonenumber
                        ..text =
                            vmProfile.profilepageResponse.data?.contactNumber ??
                                '',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w))),
                        labelText: 'Mobile Number',
                        labelStyle: TextStyle(
                          color: Appthemes.cPrimary,
                          fontSize: 11.sp,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                sized0hx15,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 45.w,
                    child: TextFormField(
                      readOnly: true,
                      style: TextStyle(fontSize: 11.sp),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the Email';
                        }
                        return null;
                      },
                      controller: _controlleremail
                        ..text =
                            vmProfile.profilepageResponse.data?.email ?? '',
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w))),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Appthemes.cPrimary,
                          fontSize: 11.sp,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                sized0hx15,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: TextFormField(
                    style: TextStyle(fontSize: 11.sp),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the Username';
                      }
                      return null;
                    },
                    controller: _controllerusername
                      ..text =
                          vmProfile.profilepageResponse.data?.username ?? '',
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 12),
                      suffixIcon: Icon(
                        Icons.edit,
                        size: 16.sp,
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.w))),
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Appthemes.cPrimary,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
                sized0hx15,
                Observer(builder: (context) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                    child: SizedBox(
                      height: 45.w,
                      child: TextFormField(
                        controller: _controllerpassword,
                        obscureText: !vmProfile.passObscure,
                        style: TextStyle(fontSize: 11.sp),
                        decoration: InputDecoration(
                          suffix: InkWell(
                              onTap: () {
                                vmProfile.passObscure = !vmProfile.passObscure;
                              },
                              child: Icon(
                                vmProfile.passObscure == false
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 16.sp,
                              )),
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w)),
                          ),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                            color: Appthemes.cPrimary,
                            fontSize: 10.sp,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
                sized0hx40,
                SizedBox(
                  width: 26.w,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: Observer(builder: (_) {
                      return CmButton(
                        loading: vmProfile.profileeditResponse.loading,
                        text: 'Save',
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            String username = _controllerusername.text;
                            String password = _controllerpassword.text;

                            vmProfile.profileeditviewmodel(username, password);
                          }
                        },
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
