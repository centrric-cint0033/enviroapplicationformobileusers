import 'package:enviro_mobile_application/view/loginpage/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(325, 640),
      minTextAdapt: true,
      builder: (context, snapshot) {
        return const MaterialApp(
            title: 'Enviro waste solution', home: LoginPage());
      },
    );
  }
}
