import 'package:flutter/material.dart';
import 'package:mvp/src/screens/profile_page/components/counter_widget.dart';
import 'package:mvp/src/screens/profile_page/components/options_list.dart';
import 'package:mvp/src/screens/profile_page/components/payment_widget.dart';
import 'package:mvp/src/screens/profile_page/components/profile_widget.dart';
import 'package:mvp/src/utils/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kTextColor2,
      body: ListView(
        padding: screenPadding,
        children: const [
          //profile
          ProfileWidget(),
          //counter
          CounterWidget(),
          //payment
          PaymentWidget(),
          Divider(
            color: kAccentColor,
            height: 20,
            thickness: 5,
          ),
          //options
          OptionsList()
        ],
      ),
    );
  }
}
