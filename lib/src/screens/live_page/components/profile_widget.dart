import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants.dart';
import '../../../widgets/horizontal_gap.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 62.h,
            width: 198.w,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9).withOpacity(0.5),
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/lastbreed.png',
                    height: 62.h,
                    width: 48.w,
                  ),
                  const HorizontalGap(gap: 5),
                  Text(
                    "Ben carson",
                    style: font12_White,
                  ),
                  const HorizontalGap(gap: 5),
                  Container(
                    height: 21.6.h,
                    width: 54.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFF2476D3),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Follow",
                          style: font8Black,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 62.h,
            width: 151.w,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9).withOpacity(0.5),
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.remove_red_eye,
                    size: 20.sp,
                    color: kWhiteColor,
                  ),
                  Text(
                    "8.3k",
                    style: font15Black,
                  ),
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
             
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
