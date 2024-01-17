import 'package:enviro_mobile_application/Routepage/approutes.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'view/loginpage/common/appbar/Appthemes/Appthemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final appRouter = AppRouter();
    return ScreenUtilInit(
      designSize: const Size(325, 640),
      minTextAdapt: true,
      builder: (context, snapshot) {
        return MaterialApp.router(
          routerConfig: appRouter.config(),
          debugShowCheckedModeBanner: false,
          title: 'Enviro waste solution',
          theme: Appthemes.themeData,
        );
      },
    );
  }
}
