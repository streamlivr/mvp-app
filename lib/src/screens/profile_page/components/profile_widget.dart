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
                  color: const Color(0xFFE0E0E0).withOpacity(0.25),
                  spreadRadius: 3,
                  blurRadius: 4,
                  offset: const Offset(0, 0),
                )
              ],
              color: const Color.fromARGB(255, 241, 104, 104),
            ),
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
                    backgroundColor: const Color.fromARGB(255, 222, 49, 49)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 32.5.r,
                    backgroundColor: const Color.fromARGB(255, 199, 44, 44)
                        .withOpacity(0.33),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 29.5.r,
                    backgroundImage: const AssetImage(
                      "assets/images/wizkid.png",
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 13.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
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
              Text(
                "Wizkid Ayo",
                style: font18White,
              ),
              Row(
                children: [
                  Text(
                    "Fringed.stvr.mainnet",
                    style: font18White,
                  ),
                  const HorizontalGap(gap: 5),
                  const Icon(
                    Icons.copy,
                    color: kWhiteColor,
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
