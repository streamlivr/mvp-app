import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/utils/constants.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xFF4D566B),
          borderRadius: BorderRadius.circular(28.r)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: kWhiteColor.withOpacity(0.45),
          ),
          Text(
            "Search host, title, creator or artist",
            style: TextStyle(
              color: kWhiteColor.withOpacity(0.45),
            ),
          ),
        ],
      ),
    );
  }
}
