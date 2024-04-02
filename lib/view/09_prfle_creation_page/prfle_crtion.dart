import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfileCreationPage extends StatelessWidget {
  const ProfileCreationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Profile'),
        actions: cmn_action_icon,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                // Wrap the Image.network with Center widget
                child: SizedBox(
                  width: 100,
                  height: 100,
                  child: vmProfile.profilepageResponse.data?.dp != null
                      ? Image.network(
                          vmProfile.profilepageResponse.data!.dp!,
                          fit: BoxFit.cover,
                        )
                      : Container(),
                  // You can replace Container() with any placeholder widget you desire
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
                  child: TextField(
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
              const SizedBox(height: 22), // Add some space between fields
              Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: SizedBox(
                  height: 48,
                  child: TextField(
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
                  child: TextField(
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
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          // Add your icon onPressed logic here
                        },
                        icon: Icon(Icons.edit),
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
                  child: TextField(
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          onPressed: () {
                            // Add your icon onPressed logic here
                          },
                          icon: Icon(Icons.edit),
                        ),
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(24.0))),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Colors.blue)),
                    obscureText: true, // Hide the entered text
                  ),
                ),
              ),
              const SizedBox(
                height: 64,
              ), // Add more space before the button
              SizedBox(
                width: 34,
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.blue; // Background color
                      },
                    ),
                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.white; // Text color
                      },
                    ),
                  ),
                  onPressed: () {
                    // Add your save logic here
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
