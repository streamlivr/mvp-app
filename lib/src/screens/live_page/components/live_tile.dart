import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class LiveTile extends StatelessWidget {
  const LiveTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/image.png',
      'assets/images/artist.png',
      'assets/images/judeus_samson.png',
      'assets/images/brian_lundquist.png',
      'assets/images/pexels_aidan.png',
      'assets/images/artist.png',
    ];
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: images.length,
        // padding: screenPadding,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return 
          SizedBox(
            height: 73.h,
            width: 73.w,
            // color: Colors.white,
            // margin: const EdgeInsets.only(right: 8),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 36.5.r,
                    backgroundColor: const Color(0xFF6C7992).withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 32.5.r,
                    backgroundColor: const Color(0xFF7187B8).withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 29.5.r,
                    backgroundImage: AssetImage(
                      images[index],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 13.h,
                    width: 41.w,
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
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
    
        },
      ),
    );
  }
}
