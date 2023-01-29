import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

class PaymentWidget extends StatelessWidget {
  const PaymentWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: screenPadding,
      child: Row(
        children: [
          tile(url: "assets/icons/money_bag.png", title: "title"),
          const HorizontalGap(gap: 10),
          tile(url: "assets/icons/money_bag.png", title: "title"),
        ],
      ),
    );
  }
}

Widget tile({required String url, required String title}) {
  return Expanded(
    child: Container(
      height: 70.h,
      decoration: BoxDecoration(
        color: kAccentColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(url), Text(title,style: font15White, ), ],
      ),
    ),
  );
}
