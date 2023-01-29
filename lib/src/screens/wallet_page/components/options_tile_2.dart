import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';

class OptionsTile2 extends StatelessWidget {
  const OptionsTile2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var data = [
      '\$NFTs',
      '\$Transactions',
      '\$Utilities',
    ];
    return SizedBox(
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.only(right: 8),
                  child: Center(
                      child: Text(
                    data[0],
                    style: font15White,
                  ))),
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
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              child: Center(
                  child: Text(
                data[1],
                style: font15White,
              ))),
          Container(
              padding: const EdgeInsets.all(8),
              margin: const EdgeInsets.only(right: 8),
              child: Center(
                  child: Text(
                data[2],
                style: font15White,
              ))),
        ],
      ),
    );
  }
}
