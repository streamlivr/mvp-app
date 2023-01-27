import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../widgets/horizontal_gap.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 58.h,
            width: 192.w,
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9).withOpacity(0.5),
                borderRadius: BorderRadius.circular(57.r)),
            child: Row(
              children: [
                const HorizontalGap(gap: 15),
                Text(
                  "Comments",
                  style: font18White,
                ),
                const Spacer(),
                Container(
                  height: 62.h,
                  width: 58.w,
                  decoration: const BoxDecoration(
                    color: Color(0xFF3A3A3A),
                    shape: BoxShape.circle,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.send_outlined,
                        color: kWhiteColor,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 58.h,
            width: 121.w,
            decoration: BoxDecoration(
                color: const Color(0xFFD9D9D9).withOpacity(0.5),
                borderRadius: BorderRadius.circular(40)),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Like",
                    style: font18White,
                  ),
                  Icon(
                    Icons.favorite,
                    color: kErrorColor1,
                    size: 33.r,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
