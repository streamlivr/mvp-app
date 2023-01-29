import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtisteWidget extends StatelessWidget {
  const ArtisteWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
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
                  backgroundColor:
                      const Color.fromARGB(255, 222, 49, 49).withOpacity(0.33),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 32.5.r,
                  backgroundColor:
                      const Color.fromARGB(255, 199, 44, 44).withOpacity(0.33),
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
            ],
          ),
        ),
      ],
    );
  }
}
