import 'package:flutter/material.dart';
import 'package:zego_uikit_prebuilt_live_streaming/zego_uikit_prebuilt_live_streaming.dart';

class LivePage2 extends StatelessWidget {
  final bool isHost;
  final String userId;
  const LivePage2({Key? key, required this.isHost, required this.userId})
      : super(key: key);
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
        body: SafeArea(
          child: ZegoUIKitPrebuiltLiveStreaming(
            appID:
                881288133, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
            appSign:
                '220ce27f3e5bbf043de7eb339252079897f105cfe67341ec40d6897a1b45ed00', // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
            userID: userId,
            userName: 'user_name2',
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
