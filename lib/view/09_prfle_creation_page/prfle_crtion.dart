import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

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
      drawer: CmnDrawer(context),
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
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: vmProfile.profilepageResponse.data?.dp != null
                        ? Image.network(
                            vmProfile.profilepageResponse.data!.dp!,
                            fit: BoxFit.cover,
                          )
                        : Container(),
                  ),
                ),
                sized0hx05,
                Center(
                  child: Text(
                    vmProfile.profilepageResponse.data?.username ?? '',
                  ),
                ),
                sized0hx05,
                Center(
                  child: Text(
                    vmProfile.profilepageResponse.data?.permissionType ?? '',
                  ),
                ),
                sized0hx20,
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
                      readOnly: true,
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
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        labelText: 'Name',
                        labelStyle: const TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
                      readOnly: true,
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
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        labelText: 'Mobile Number',
                        labelStyle: const TextStyle(color: Colors.blue),
                      ),
                      keyboardType: TextInputType.phone,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
                      readOnly: true,
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
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        labelText: 'Email',
                        labelStyle: const TextStyle(color: Colors.blue),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
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
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        labelText: 'Username',
                        labelStyle: const TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: SizedBox(
                    height: 48,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter the passwords';
                        }
                        return null;
                      },
                      controller: _controllerpassword,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.edit),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(24.0)),
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.blue),
                      ),
                      obscureText: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 55,
                ),
                SizedBox(
                  width: 34,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            return Colors.blue; // Background color
                          },
                        ),
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            return Colors.white; // Text color
                          },
                        ),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {}
                        // Add your save logic here
                      },
                      child: const Text('Save'),
                    ),
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
