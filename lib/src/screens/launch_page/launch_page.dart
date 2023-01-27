import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mvp/src/screens/register_page/register_page.dart';

import '../../utils/constants.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/sebastian_pandelache.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          children: [
            const Expanded(child: SizedBox()),
            //title
            Text(
              "Earn from live Streaming \nyour Gameplay, \nPerformance & Content",
              textAlign: TextAlign.center,
              style: GoogleFonts.comfortaa(
                fontSize: 25.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.h),
            //subtitle
            Text(
              "Watch and chat with millions of other fans from around the world you can start earning from livestreaming or watching others livestreaming content",
              textAlign: TextAlign.center,
              style: GoogleFonts.comfortaa(
                fontSize: 15.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20.h),
            //button
            InkWell(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    transitionDuration: kAnimationDuration,
                    pageBuilder: ((context, animation, _) {
                      return FadeTransition(
                        opacity: animation,
                        child: const RegisterPage(),
                      );
                    }),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(
                11.r,
              ),
              child: Container(
                height: 64.h,
                width: 87.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    11.r,
                  ),
                  gradient: const LinearGradient(colors: [
                    Color(0xFF2C1E4D),
                    Color(0xFF336B98),
                  ]),
                  border: Border.all(
                    color: const Color(
                      0xFFFFF2F2,
                    ),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  textDirection: TextDirection.rtl,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 100.h),
          ],
        ),
      ),
    );
  }
}
