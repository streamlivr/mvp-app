import 'package:flutter/material.dart';
import 'package:mvp/src/screens/launch_page/launch_page.dart';
import 'package:mvp/src/screens/main_page/main_page.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff231459),
    );
  }

  void init() async {
    await SharedPreferences.getInstance().then((value) {
      var token = value.getString('token') ?? "";
      if (token.isNotEmpty) {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: kAnimationDuration,
            pageBuilder: ((context, animation, _) {
              return FadeTransition(
                opacity: animation,
                child: const MainPage(),
              );
            }),
          ),
        );
      } else {
        Navigator.of(context).push(
          PageRouteBuilder(
            transitionDuration: kAnimationDuration,
            pageBuilder: ((context, animation, _) {
              return FadeTransition(
                opacity: animation,
                child: const LaunchPage(),
              );
            }),
          ),
        );
      }
    });
  }
}
