import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFilledButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  final Color? isFilled;
  const CustomFilledButton(
      {Key? key, required this.child, required this.onPressed, this.isFilled})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54.h,
      width: 287.w,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isFilled ?? const Color(0xFF3E83C0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.35.r),
              side: const BorderSide(
                color: Color(0xFF3FB4EC),
              ),
            ),
          ),
          onPressed: onPressed,
          child: child),
    );
  }
}
