import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/screens/live_page/components/other_view_tile.dart';
import 'package:mvp/src/screens/live_page/components/popular_tile.dart';
import 'package:mvp/src/screens/live_page/components/popular_view_tile.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';

import '../live_page/components/live_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
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
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/person.svg",
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: ListView(
        padding: screenPadding,
        children: [
          //live tile
          const LiveTile(),
          const VerticalGap(gap: 30),
          //popular
          Row(
            children: [
              Text(
                "Live Popular",
                style: font17Black,
              ),
              SvgPicture.asset(
                'assets/icons/emojione_fire.svg',
                height: 25.13.sp,
                width: 25.sp,
              ),
              const Spacer(),
              Text(
                "Sell all",
                style: font15Black,
              ),
            ],
          ),
          const VerticalGap(gap: 30),
          //popular tab tile
          const PopularTile(),
          const VerticalGap(gap: 30),
          //popular view tile
          const PopularViewTile(),
          const VerticalGap(gap: 30),
          //other view
          const OtherViewTile(),
          //
        ],
      ),
    );
  }
}
