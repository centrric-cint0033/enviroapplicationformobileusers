import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        suffixIcon: Icon(Icons.account_circle_rounded),
        height: 72,
        automaticallyImplyLeading: false,
      ),
    );
  }
}
