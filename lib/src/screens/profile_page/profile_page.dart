import 'package:flutter/material.dart';
import 'package:mvp/src/screens/profile_page/components/counter_widget.dart';
import 'package:mvp/src/screens/profile_page/components/options_list.dart';
import 'package:mvp/src/screens/profile_page/components/payment_widget.dart';
import 'package:mvp/src/screens/profile_page/components/profile_widget.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextColor2,
      body: ListView(
        padding: screenPadding,
        children: const [
          VerticalGap(gap: 30),
          //profile
          ProfileWidget(),
          VerticalGap(gap: 30),
          //counter
          CounterWidget(),
          VerticalGap(gap: 20),
          //payment
          PaymentWidget(),
          VerticalGap(gap: 10),
          Divider(
            color: kAccentColor,
            height: 20,
            thickness: 5,
          ),
          VerticalGap(gap: 10),
          //options
          OptionsList()
        ],
      ),
    );
  }
}
