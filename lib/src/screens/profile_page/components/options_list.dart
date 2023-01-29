import 'package:flutter/material.dart';
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
            child: Text(
              "4",
              style: font8Black,
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
            backgroundColor: Color(0xFFD9D8D9).withOpacity(0.26),
            child: const Text(
              "9",
              style: TextStyle(
                fontSize: 18,
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
  return Row(
    children: [
      Image.asset(
        url,
        errorBuilder: (context, error, stackTrace) => const SizedBox(),
      ),
      const HorizontalGap(gap: 10),
      Text(title),
      const Spacer(),
      trailing ?? const SizedBox(),
    ],
  );
}
