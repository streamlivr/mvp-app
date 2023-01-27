import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OtherViewTile extends StatelessWidget {
  const OtherViewTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var images = [
      'assets/images/singer.png',
      'assets/images/ea_sports_logo.png',
      'assets/images/boat.png',
      'assets/images/piano.png',
    ];
    return SizedBox(
      // height: 221.h,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: images.length,
        // padding: screenPadding,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10.r),
            ),
            margin: const EdgeInsets.only(right: 16),
          );
        },
      ),
    );
  }
}
