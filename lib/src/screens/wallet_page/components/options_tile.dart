import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';

class OptionsTile extends StatelessWidget {
  const OptionsTile({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = [
      'Send \$STVR',
      'Buy \$STVR',
      'Stake \$STVR',
    ];
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                  height: 30,
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                      color: Color(0xFFD06DAA),
                      borderRadius: BorderRadius.circular(17)),
                  child: Center(
                      child: Text(
                    data[0],
                    style: font10White,
                  ))),
              const VerticalGap(gap: 5),
              Container(
                height: 7.84.h,
                width: 11.w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFFE0E0E0).withOpacity(0.25),
                      spreadRadius: 3,
                      blurRadius: 4,
                      offset: const Offset(0, 0),
                    )
                  ],
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(100, 70)),
                  color: const Color(0xFF44A0CB),
                ),
              ),
            ],
          ),
          Container(
              height: 30,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  color: kAccentColor, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                data[1],
                style: font18White,
              ))),
          Container(
              height: 30,
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  color: kAccentColor, borderRadius: BorderRadius.circular(20)),
              child: Center(
                  child: Text(
                data[2],
                style: font18White,
              ))),
        ],
      ),
    );
  }
}
