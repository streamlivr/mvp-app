import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/screens/launch_page/launch_page.dart';
import 'package:mvp/src/screens/register_page/register_controller.dart';
import 'package:provider/provider.dart';

import 'src/providers/navigation_provider/navigation_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
        ChangeNotifierProvider(create: (context) => RegisterController()),
      ],
      child: ScreenUtilInit(
          designSize: const Size(428, 926),
          builder: (context, v) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(),
              home: const LaunchPage(),
            );
          }),
    );
  }
}
