import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const String appName = "Mvp";
const String appVersion = "v 0.0.0.1";

const kPrimaryColor1 = Color(0xFF231459);
const kSecondaryColor = Color(0xFFFF715B);
const kAccentColor = Color(0xFF3F4042);
const kWhiteColor = Color(0xFFFFFFFF);
const kTransparentColor = Colors.transparent;
const kGreyColor = Color(0xFFC0C0C0);
const kGreyColor2 = Color(0xFFF0F0F0);
const kGreyColor3 = Color(0xFF909090);
const kGreenColor = Color(0xFF34A853);
const kPrimaryGradientColor = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    kPrimaryColor1,
    kPrimaryColor1,
  ],
);

const kTextColor1 = Color(0xFF000000);
const kTextColor2 = Color(0xFF1A1A1A);
const kTextColor3 = Color(0xFF333333);
const kTextColor4 = Color(0xFF4D4D4D);
const kTextColor5 = Color(0xFF095296);
const kErrorColor1 = Color(0xFFFF0000);
const kErrorColor2 = Color(0xFFFF0000);
const kDefaultColor1 = Color(0xFF4D4D4D);
const kDefaultColor2 = Color(0xFF808080);
const kDefaultColor3 = Color(0xFFB3B3B3);
const kDefaultColor4 = Color(0xFFCCCCCC);

const kAnimationDuration = Duration(milliseconds: 650);

final EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 24.h);

final font38Black = TextStyle(
  fontSize: 38.sp,
  fontWeight: FontWeight.w700,
  color: Colors.black,
);
final font22Black = TextStyle(
  fontSize: 22.sp,
  fontWeight: FontWeight.w500,
  color: Colors.black,
);
final font16Bold = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.bold,
  color: kTextColor1,
);
final font16Grey = TextStyle(
  fontSize: 16.sp,
  fontWeight: FontWeight.bold,
  color: kGreyColor3,
);
final font14Black = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: kTextColor1,
);
final font12Black = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: kTextColor1,
);
final font20Black = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: kTextColor1,
);
final font14Grey = TextStyle(
  fontSize: 14.sp,
  fontWeight: FontWeight.w500,
  color: kGreyColor,
);
