import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';

class PopularTile extends StatelessWidget {
  const PopularTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var images = [
      'Gaming',
      'Sport',
      'Artist',
      'Content Creation',
    ];
    return SizedBox(
      height: 30,
      child: ListView.builder(
        itemCount: images.length,
        // padding: screenPadding,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height: 32.h,
            // width: 73.w,
            padding: const EdgeInsets.only(
              left: 8,
              right: 8,
            ),
            // color: Colors.white,
            decoration: BoxDecoration(
              color: const Color(0xFFB8E5F9).withOpacity(0.36),
              border: Border.all(
                color: const Color(0xFFABB7C3),
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            margin: const EdgeInsets.only(right: 16),
            child: Center(
              child: Text(
                images[index],
                style: font13Black,
              ),
            ),
          );
        },
      ),
    );
  }
}
