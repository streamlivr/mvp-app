import 'package:flutter/material.dart';
import 'package:mvp/src/utils/constants.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        myColumn(title: "10", subtitle: "Collection"),
        myColumn(title: "1.9M", subtitle: "fans"),
        myColumn(title: "96", subtitle: "following")
      ],
    );
  }
}

Widget myColumn({
  required String title,
  required String subtitle,
}) {
  return Column(
    children: [
      Text(
        title,
        style: TextStyle(
          color: kBlueColor.withOpacity(0.42),
          fontSize: 15,
        ),
      ),
      Text(
        subtitle,
        style: TextStyle(
          color: kWhiteColor.withOpacity(0.42),
          fontSize: 15,
        ),
      ),
    ],
  );
}
