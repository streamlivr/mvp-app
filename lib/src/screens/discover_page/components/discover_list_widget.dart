import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../model/saved.dart';
import '../../../utils/constants.dart';
import '../../../widgets/horizontal_gap.dart';

class DiscoverListWidget extends StatelessWidget {
  const DiscoverListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var list = [
      SavedModel(
        profile: "assets/images/people.png",
        name: "blacksimon",
        body: "Mix of 2000's R&B and music from 2014ish",
        image: "assets/images/black_white.png",
        rating: "2.1",
      ),
      SavedModel(
        profile: "assets/images/portrait.png",
        name: "blacksimon",
        body: "Upbeat road trip car jams",
        image: "assets/images/video_production_v.png",
        rating: "6.1",
      ),
      SavedModel(
        profile: "assets/images/woman.png",
        name: "jessyenden1",
        body: "Chill mellow acoustics",
        image: "assets/images/monkey.png",
        rating: "8.3",
      ),
      SavedModel(
        profile: "assets/images/male.png",
        name: "adamsandi",
        body: "Tswift all day everyday",
        image: "assets/images/video_production_v.png",
        rating: "6.1",
      ), 
      SavedModel(
        profile: "assets/images/person.png",
        name: "loganmahr",
        body: "Preppin for my Vogue photo shoot",
        image: "assets/images/girl.png",
        rating: "4.7",
      ),
     
    ];
    return Expanded(
        child: StaggeredGridView.countBuilder(
      staggeredTileBuilder: (index) =>
          StaggeredTile.count(1, index.isOdd ? 2 : 1),
      mainAxisSpacing: 8,
      scrollDirection: Axis.vertical,
      crossAxisSpacing: 8,
      crossAxisCount: 2,
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Container(
          // color: kAccentColor,
          decoration: BoxDecoration(
            // color: const Color(0xFFB8E5F9).withOpacity(0.36),
            image: DecorationImage(
                image: AssetImage(
                  list[index].image ?? "",
                ),
                fit: BoxFit.cover),
            // border: Border.all(
            //   color: const Color(0xFFABB7C3),
            //   width: 2,
            // ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          // height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(8),
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 23.h,
                      width: 72.w,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Live",
                            style: font8Black,
                          ),
                          const HorizontalGap(gap: 1),
                          SvgPicture.asset(
                            'assets/icons/signal.svg',
                            height: 6.13.sp,
                            width: 8.sp,
                            color: kWhiteColor,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16.r,
                          backgroundImage: AssetImage(
                            list[index].profile ?? "",
                          ),
                        ),
                        const HorizontalGap(gap: 5),
                        Text(
                          list[index].name ?? "",
                          style: font13Black,
                        ),
                      ],
                    ),
                    Text(
                      list[index].body ?? "",
                      style: font15Black,
                    ),
                    Text(
                      "Upbeat road trip car jams",
                      style: font15Black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
