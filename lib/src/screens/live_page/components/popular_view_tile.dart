import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';

class PopularViewTile extends StatelessWidget {
  const PopularViewTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/pexels_davis.png',
      'assets/images/pexels_davis.png',
      'assets/images/pexels_davis.png',
      'assets/images/pexels_davis.png',
    ];
    return SizedBox(
      height: 221.h,
      child: ListView.builder(
        itemCount: images.length,
        // padding: screenPadding,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return 
          Container(
            height: 221.h,
            width: 330.w,
            padding: const EdgeInsets.all(8),
            // color: Colors.white,
            decoration: BoxDecoration(
              // color: const Color(0xFFB8E5F9).withOpacity(0.36),
              image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit: BoxFit.cover),
              border: Border.all(
                color: const Color(0xFFABB7C3),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            margin: const EdgeInsets.only(right: 16),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 27.h,
                  width: 66.w,
                  decoration: BoxDecoration(
                      color: kWhiteColor.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(5.r)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: kWhiteColor,
                        size: 16.sp,
                      ),
                      Text(
                        "8.3k",
                        style: font15Black,
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Joshua suraz",
                          style: font7White,
                        ),
                        Text(
                          "Playing call of duty mobiles",
                          style: font7White,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 32.h,
                      width: 99.w,
                      padding: const EdgeInsets.all(2),
                      // color: Colors.white,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                          color: const Color(0xFFABB7C3),
                          width: 2,
                        ),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      // margin: const EdgeInsets.only(right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "follow",
                            style: font13Black,
                          ),
                          Icon(
                            Icons.add,
                            color: kWhiteColor,
                            size: 16.sp,
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
      
        },
      ),
    );
  }
}
