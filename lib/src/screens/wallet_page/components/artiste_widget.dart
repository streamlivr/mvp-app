import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class ArtisteWidget extends StatelessWidget {
  const ArtisteWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFFE0E0E0).withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                )
              ],
              color: const Color.fromARGB(255, 241, 104, 104),
            ),
            height: 33.h,
            width: 33.w,
            // color: Colors.white,
            // margin: const EdgeInsets.only(right: 8),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 16.5.r,
                    backgroundColor: const Color.fromARGB(255, 222, 49, 49)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 12.5.r,
                    backgroundColor: const Color.fromARGB(255, 199, 44, 44)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 9.5.r,
                    backgroundImage: const AssetImage(
                      "assets/images/wizkid.png",
                    ),
                  ),
                ),
              ],
            ),
          ),
          const HorizontalGap(gap: 20),
          Column(
            children: [
              Text(
                "\$Morelovelessego",
                style: font18White,
              ),
              Text(
                "owns 43.335 STVR",
                style: font18White,
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Text(
                "~\$130,000",
                style: font18White,
              ),
              Text(
                "USD Value",
                style: font18White,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
