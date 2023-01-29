import 'package:flutter/material.dart';

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
      Text(title),
      Text(subtitle),
    ],
  );
}
