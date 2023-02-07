import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mvp/src/screens/live_page/components/comment_widget.dart';
import 'package:mvp/src/screens/live_page/components/profile_widget.dart';
import 'package:mvp/src/utils/constants.dart';

import '../../widgets/vertical_gap.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/pexels.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Column(
              children: [
                const VerticalGap(gap: 30),
                const ProfileWidget(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          "Tip Creator",
                          style: font18White,
                        ),
                        Image.asset('assets/icons/streamlivr_coin.png')
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                const CommentWidget(),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: LottieBuilder.asset(
                'assets/animations/hearts.json',
              ),
            )
          ],
        ),
      ),
    );
  }
}
