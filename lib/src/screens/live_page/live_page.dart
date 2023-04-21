import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mvp/src/screens/live_page/components/comment_widget.dart';
import 'package:mvp/src/screens/live_page/components/profile_widget.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

import '../../widgets/vertical_gap.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final String liveID;
   bool isHost = false;
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
        body: SafeArea(
      child: ZegoUIKitPrebuiltLiveStreaming(
        appID: 881288133,// Fill in the appID that you get from ZEGOCLOUD Admin Console.
        appSign: '220ce27f3e5bbf043de7eb339252079897f105cfe67341ec40d6897a1b45ed00',// Fill in the appSign that you get from ZEGOCLOUD Admin Console.
        userID: 'user_id1',
        userName: 'user_name1',
        liveID: 'liveID',
        config: isHost
            ? ZegoUIKitPrebuiltLiveStreamingConfig.host()
            : ZegoUIKitPrebuiltLiveStreamingConfig.audience(),
      ),
    ),
      ),
    );
  }
}
