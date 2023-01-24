import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/screens/launch_page/launch_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        builder: (context, v) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(),
            home: const LaunchPage(),
          );
        });
  }
}
