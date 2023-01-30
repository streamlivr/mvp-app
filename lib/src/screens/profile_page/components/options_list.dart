import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class OptionsList extends StatelessWidget {
  const OptionsList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        tile(
          url: "assets/icons/messages_icon.png",
          title: "Messages",
          trailing: CircleAvatar(
            radius: 10,
            backgroundColor: kGreyColor3.withOpacity(0.5),
            child: const Text(
              "4",
              style: TextStyle(
                fontSize: 8,
                color: Color(0xFF2BE6FF),
              ),
            ),
          ),
        ),
        tile(url: "assets/icons/wallet_blue.png", title: "Wallet"),
        tile(url: "assets/icons/back_pack.png", title: "My collectibles"),
        tile(
          url: "assets/icons/signal.png",
          title: "My livestreams",
          trailing: CircleAvatar(
            radius: 10,
            backgroundColor: const Color(0xFFD9D8D9).withOpacity(0.26),
            child: const Text(
              "9",
              style: TextStyle(
                fontSize: 8,
                color: Color(0xFF2BE6FF),
              ),
            ),
          ),
        ),
        tile(url: "assets/icons/megaphone.png", title: "Activities"),
      ],
    );
  }
}

Widget tile({required String url, required String title, Widget? trailing}) {
  return SizedBox(
    height: 50.h,
    child: Row(
      children: [
        SizedBox(
          width: 20.w,
          child: Image.asset(
            url,
            errorBuilder: (context, error, stackTrace) => const SizedBox(),
          ),
        ),
        const HorizontalGap(gap: 10),
        Text(
          title,
          style: font12White,
        ),
        const Spacer(),
        trailing ?? const SizedBox(),
      ],
    ),
  );
}
