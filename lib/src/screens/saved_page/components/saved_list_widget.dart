import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvp/src/widgets/horizontal_gap.dart';

import '../../../model/saved.dart';
import '../../../utils/constants.dart';

class SavedListWidget extends StatelessWidget {
  const SavedListWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var list = [
      SavedModel(
        profile: "assets/images/woman.png",
        name: "jessyenden1",
        body: "Chill mellow accoustics",
        image: "assets/images/monkey_b.png",
        rating: "8.3",
      ),
      SavedModel(
        profile: "assets/images/portrait.png",
        name: "blacksimon",
        body: "Upbeat road trip car jams",
        image: "assets/images/model.png",
        rating: "6.1",
      ),
      SavedModel(
        profile: "assets/images/male.png",
        name: "adamsandi",
        body: "Tswift all day everyday",
        image: "assets/images/video_production.png",
        rating: "6.1",
      ),
      SavedModel(
        profile: "assets/images/people.png",
        name: "blacksimon",
        body: "Mix of 2000's R&B and music from 2014ish",
        image: "assets/images/black_white_2.png",
        rating: "2.1",
      ),
      SavedModel(
        profile: "assets/images/person.png",
        name: "loganmahr",
        body: "Preppin for my Vogue photo shoot",
        image: "assets/images/girl_2.png",
        rating: "4.7",
      ),
    ];
    return Expanded(
        child: ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: 110.h,
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 16.r,
                          backgroundImage: AssetImage(
                            list[index].profile ?? "",
                          ),
                        ),
                        const HorizontalGap(gap: 5),
                        Text(
                          list[index].name ?? "",
                          style: font13Black,
                        ),
                      ],
                    ),
                    Text(
                      list[index].body ?? "",
                      style: font15Black,
                    ),
                  ],
                ),
              ),
              Container(
                height: 97.h,
                width: 103.w,
                padding: const EdgeInsets.all(8),
                // color: Colors.white,
                decoration: BoxDecoration(
                  // color: const Color(0xFFB8E5F9).withOpacity(0.36),
                  image: DecorationImage(
                      image: AssetImage(
                        list[index].image ?? "",
                      ),
                      fit: BoxFit.cover),
                  // border: Border.all(
                  //   color: const Color(0xFFABB7C3),
                  //   width: 2,
                  // ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
                margin: const EdgeInsets.only(right: 16),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 17.h,
                        width: 42.w,
                        decoration: BoxDecoration(
                            color: kWhiteColor.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(5.r)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.remove_red_eye,
                              color: kWhiteColor,
                              size: 10.sp,
                            ),
                            Text(
                              "${list[index].rating}k",
                              style: font13Black,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    ));
  }
}
