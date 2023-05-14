import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/screens/main_page/main_page.dart';
import 'package:mvp/src/screens/register_page/register_controller.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/custom_progress.dart';
import 'package:mvp/src/widgets/filled_button.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../widgets/flip_card_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  final controller = FlipCardController();
  final bool _displayFront = true;
  var emailTextEditingCOntroller = TextEditingController();
  var passwordTextEditingCOntroller = TextEditingController();
  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
  }

  @override
  void dispose() {
    super.dispose();
    animationController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var provider = Provider.of<RegisterController>(context, listen: false);
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF301D53),
            Color(0xFF3B4E8C),
            Color(0xFF41B2F1),
          ])),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: FlipCardWidget(
                controller: controller,
                front: Image.asset('assets/images/logo_3d.png'),
                end: Image.asset('assets/images/logo_3d.png')),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: screenPadding,
              child: Align(
                alignment: Alignment.center,
                child: ListView(
                  children: [
                    const VerticalGap(gap: 33),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assets/icons/main_logo.png'),
                    ),
                    const VerticalGap(gap: 15),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Register/Login',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    nameInputField(
                      controller: emailTextEditingCOntroller,
                      hint: "koln@streamlivr.com",
                      icon: Icon(
                        Icons.email_outlined,
                        color: Colors.white.withOpacity(0.33),
                      ),
                    ),
                    const VerticalGap(gap: 5),
                    nameInputField(
                      controller: passwordTextEditingCOntroller,
                      hint: "password",
                      icon: Icon(
                        Icons.key,
                        color: Colors.white.withOpacity(0.33),
                      ),
                    ),
                    const VerticalGap(gap: 130),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.h),
                      child: CustomFilledButton(
                        child: Row(
                          children: [
                            SvgPicture.asset('assets/icons/wallet_blue.svg'),
                            const HorizontalGap(gap: 20),
                            const Text("Connect with wallet"),
                          ],
                        ),
                        onPressed: () {
                          controller.flipCard();
                        },
                      ),
                    ),
                    const VerticalGap(gap: 20),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.h),
                      child: CustomFilledButton(
                        isFilled: Colors.transparent,
                        child: Row(
                          children: [
                            Image.asset('assets/icons/google.png'),
                            const HorizontalGap(gap: 20),
                            const Text("Continue with google"),
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const VerticalGap(gap: 50),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 70.h),
                      child: CustomFilledButton(
                        child: const Text("Login"),
                        onPressed: () {
                          if (emailTextEditingCOntroller.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("email field cannot be empty")));
                            return;
                          }
                          if (passwordTextEditingCOntroller.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "password field cannot be empty")));
                            return;
                          }
                          CustomLoadingProgress()
                              .showProgress(context: context);
                          provider
                              .loginUser(
                                  email: emailTextEditingCOntroller.text,
                                  password: passwordTextEditingCOntroller.text)
                              .then((value) async {
                            Navigator.pop(context);
                            if (value.status == "success") {
                              var pref = await SharedPreferences.getInstance();
                              pref.setString('token', 'value');
                              controller.flipCard();
                              Future.delayed(const Duration(milliseconds: 500))
                                  .then((value) => {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                PageRouteBuilder(
                                                  transitionDuration:
                                                      kAnimationDuration,
                                                  pageBuilder:
                                                      ((context, animation, _) {
                                                    return FadeTransition(
                                                      opacity: animation,
                                                      child: const MainPage(),
                                                    );
                                                  }),
                                                ),
                                                (route) => false)
                                      });
                            } else {
                              String message = value.data
                                  .toString()
                                  .replaceRange(0, 14, '')
                                  .split(']')[1];
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(message)));
                              print(value.data);
                            }
                          });
                        },
                      ),
                    ),
                    const VerticalGap(gap: 10),
                    Center(
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.54),
                          fontSize: 22,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 70.h,
                      ),
                      child: CustomFilledButton(
                        isFilled: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              Container(
                                height: 30,
                                width: 30,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFF371B58),
                                          Color(0xFF42C2FF),
                                          Color(0xFFA1DFFF),
                                        ])),
                                child: const Icon(
                                  Icons.add,
                                  size: 20,
                                ),
                              ),
                              const HorizontalGap(gap: 20),
                              const Text("Create new account"),
                            ],
                          ),
                        ),
                        onPressed: () {
                          if (emailTextEditingCOntroller.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text("email field cannot be empty")));
                            return;
                          }
                          if (passwordTextEditingCOntroller.text.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text(
                                        "password field cannot be empty")));
                            return;
                          }
                          CustomLoadingProgress()
                              .showProgress(context: context);
                          provider
                              .registerUser(
                                  email: emailTextEditingCOntroller.text,
                                  password: passwordTextEditingCOntroller.text)
                              .then((value) async {
                            Navigator.pop(context);
                            if (value.status == "success") {
                              var pref = await SharedPreferences.getInstance();
                              pref.setString('token', 'value');
                              controller.flipCard();
                              Future.delayed(const Duration(milliseconds: 500))
                                  .then((value) => {
                                        Navigator.of(context)
                                            .pushAndRemoveUntil(
                                                PageRouteBuilder(
                                                  transitionDuration:
                                                      kAnimationDuration,
                                                  pageBuilder:
                                                      ((context, animation, _) {
                                                    return FadeTransition(
                                                      opacity: animation,
                                                      child: const MainPage(),
                                                    );
                                                  }),
                                                ),
                                                (route) => false)
                                      });
                            } else {
                              String message = value.data
                                  .toString()
                                  .replaceRange(0, 14, '')
                                  .split(']')[1];
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(message)));
                              print(value.data);
                            }
                          });
                        },
                      ),
                    ),
                    const VerticalGap(gap: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/icons/main_logo.png',
                          height: 20,
                          width: 20,
                        ),
                        const Text(
                          "streamlivr",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget nameInputField({
    required String hint,
    required TextEditingController controller,
    required Widget icon,
  }) {
    return TextField(
      style: const TextStyle(
        color: Colors.white,
      ),
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
        prefixIcon: icon,
        hintStyle: TextStyle(
          color: Colors.white.withOpacity(0.33),
        ),
        border: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white.withOpacity(0.33),
          width: 2.0,
        )),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
          color: Colors.white.withOpacity(0.33),
          width: 2.0,
        )),
      ),
    );
  }

  Widget _frontSide() {
    var size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/images/logo_3d.png',
      key: const ValueKey(true),
      height: size.height,
      width: size.width,
    );
  }

  Widget _rearSide() {
    var size = MediaQuery.of(context).size;
    return Image.asset(
      'assets/images/logo_3d.png',
      key: const ValueKey(false),
      height: size.height,
      width: size.width,
    );
  }

  Widget _buildFlipAnimation() {
    return AnimatedSwitcher(
        // transitionBuilder: _transitionBuilder,
        switchInCurve: Curves.easeInBack,
        switchOutCurve: Curves.easeInBack.flipped,
        layoutBuilder: (currentChild, previousChildren) => Stack(
              children: [currentChild!, ...previousChildren],
            ),
        duration: const Duration(
          milliseconds: 800,
        ),
        child: _displayFront ? _frontSide() : _rearSide());
  }

  Widget _transitionBuilder(Widget? widget, Animation<double>? animation) {
    final rotateAnim = Tween(begin: pi, end: 0.0).animate(animation!);
    return AnimatedBuilder(
      animation: rotateAnim,
      child: widget,
      builder: (context, child) {
        final isUnder = (ValueKey(_displayFront) != widget!.key);
        var tilt = ((animation.value - 0.5).abs() - 0.5) * 0.003;
        tilt *= isUnder ? -1.0 : 1.0;
        var value = isUnder ? min(rotateAnim.value, pi / 2) : rotateAnim.value;
        return Transform(
          transform: Matrix4.rotationY(value)..setEntry(3, 0, tilt),
          alignment: Alignment.center,
        );
      },
    );
  }
}
