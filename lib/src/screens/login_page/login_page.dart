import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/screens/main_page/main_page.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/filled_button.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';

import '../../widgets/flip_card_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  final controller = FlipCardController();
  final bool _displayFront = true;
  @override
  void initState() {
    super.initState();

    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2))
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                child: Column(
                  children: [
                    const VerticalGap(gap: 83),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset('assets/icons/main_logo.png'),
                    ),
                    const VerticalGap(gap: 15),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const VerticalGap(gap: 15),
                    nameInputField(
                      hint: "koln@streamlivr.com",
                      icon: SvgPicture.asset(
                        'assets/icons/message.svg',
                        color: Colors.white.withOpacity(0.33),
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                    const VerticalGap(gap: 5),
                    nameInputField(
                      hint: "password",
                      icon: SvgPicture.asset(
                        'assets/icons/key.svg',
                        color: Colors.white.withOpacity(0.33),
                        height: 20.h,
                        width: 20.w,
                      ),
                    ),
                    const VerticalGap(gap: 180),
                    CustomFilledButton(
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
                    const VerticalGap(gap: 20),
                    CustomFilledButton(
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
                    const VerticalGap(gap: 50),
                    CustomFilledButton(
                      child: const Text("Login"),
                      onPressed: () {
                        controller.flipCard();
                        Future.delayed(const Duration(milliseconds: 500))
                            .then((value) => {
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
                                  )
                                });
                      },
                    ),
                    const VerticalGap(gap: 10),
                    Text(
                      'or',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.54),
                        fontSize: 22,
                      ),
                    ),
                    const VerticalGap(gap: 10),
                    CustomFilledButton(
                      isFilled: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            height: 30.h,
                            width: 30.h,
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
                            child: Icon(
                              Icons.add,
                              size: 20.sp,
                            ),
                          ),
                          const HorizontalGap(gap: 20),
                          const Text("Continue with google"),
                        ],
                      ),
                      onPressed: () {},
                    ),
                    const VerticalGap(gap: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/icons/main_logo.png'),
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
    required Widget icon,
  }) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(8.0),
          child: icon,
        ),
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
