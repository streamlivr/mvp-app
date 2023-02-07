import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../utils/constants.dart';
import '../../../widgets/horizontal_gap.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 222, 49, 49).withOpacity(1),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: const Offset(0, 0),
                )
              ],
              color: const Color.fromARGB(255, 222, 49, 49),
            ),
            height: 110.h,
            width: 110.w,
            // color: Colors.white,
            // margin: const EdgeInsets.only(right: 8),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 51.5.r,
                    backgroundColor: const Color.fromARGB(255, 222, 49, 49)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 49.5.r,
                    backgroundColor: const Color.fromARGB(255, 199, 44, 44)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 44.5.r,
                    backgroundImage: const AssetImage(
                      "assets/images/wizkid.png",
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 18.h,
                    width: 67.w,
                    decoration: BoxDecoration(
                      color: const Color(0xFFEF3B38),
                      border: Border.all(color: const Color(0xFFBAFFF3)),
                      borderRadius: BorderRadius.circular(7.r),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Edit profile",
                          style: font8Black,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Wizkid",
                    style: font15White700,
                  ),
                  Text(
                    " Ayo",
                    style: font15White300,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "wizkid.ayo.stvr.mainnet",
                    style: font10Blue,
                  ),
                  //#6F93F1
                  const HorizontalGap(gap: 5),
                  const Icon(
                    Icons.copy,
                    color: Color(0xFF6F93F1),
                    size: 10,
                  )
                ],
              ),
              Text(
                "= \$107,550,457 USD",
                style: font18White,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
