import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/providers/navigation_provider/navigation_provider.dart';
import 'package:mvp/src/screens/wallet_page/components/artiste_widget.dart';
import 'package:mvp/src/screens/wallet_page/components/options_tile.dart';
import 'package:mvp/src/screens/wallet_page/components/options_tile_2.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';
import 'package:provider/provider.dart';

import 'components/wallet_widget.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset(
          "assets/icons/main_logo.png",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/bell.svg",
            ),
          ),
          IconButton(
            onPressed: () {
              Provider.of<NavigationProvider>(context, listen: false)
                  .changeSelected(5);
            },
            icon: SvgPicture.asset(
              "assets/icons/person.svg",
            ),
          ),
        ],
      ),
      backgroundColor: kTextColor2,
      body: Padding(
        padding: screenPadding,
        child: Column(
          children: [
            const VerticalGap(gap: 30),
            Row(
              children: [
                Text(
                  "My wallet",
                  style: font18White,
                ),
                const Spacer(),
                Text(
                  "-\$3/",
                  style: font18White,
                ),
                Image.asset(
                  'assets/icons/streamlivr_coin.png',
                  height: 15.h,
                  width: 15.w,
                  fit: BoxFit.cover,
                )
              ],
            ),
            const VerticalGap(gap: 30),
            //wallet card
            const WalletWidget(),
            const VerticalGap(gap: 40),
            //option 1
            const OptionsTile(),
            const VerticalGap(gap: 40),
            const OptionsTile2(),
            const VerticalGap(gap: 40),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Artiste",
                style: font18White,
              ),
            ),
            const VerticalGap(gap: 10),
            const ArtisteWidget(),
          ],
        ),
      ),
    );
  }
}
