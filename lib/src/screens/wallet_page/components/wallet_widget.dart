import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: const RadialGradient(radius: 5, colors: [
          Color(0xFF5D77BA),
          Color(0xFFD06CA7),
          Color(0xFF7B9BEF),
        ]),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Total Balance",
            style: font12White,
          ),
          Row(
            children: [
              Text(
                "35,850,1524 STVR",
                style: font20White,
              ),
              Text(
                "STVR",
                style: font10White,
              ),
            ],
          ),
          Text(
            "= \$107,550,457 USD",
            style: font10White,
          ),
          Row(
            children: [
              Text(
                "Fringed.stvr.mainnet",
                style: font10White,
              ),
              const HorizontalGap(gap: 5),
              const Icon(
                Icons.copy,
                color: kWhiteColor,
                size: 10,
              )
            ],
          ),
        ],
      ),
    );
  }
}
