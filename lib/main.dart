import 'package:enviro_mobile_application/Routepage/approutes.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'utilis/Appthemes.dart';

void main() {
  configureLocalDependancies();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
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
