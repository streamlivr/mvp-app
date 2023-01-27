import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/screens/saved_page/components/saved_list_widget.dart';
import 'package:mvp/src/screens/saved_page/components/search_widget.dart';
import 'package:mvp/src/utils/constants.dart';
import 'package:mvp/src/widgets/vertical_gap.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Saved"),
        leading: Image.asset(
          "assets/icons/main_logo.png",
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/bell.svg",
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/person.svg",
            ),
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: screenPadding,
        child: Column(
          children: const [
            VerticalGap(gap: 30),
            //search
            SearchWidget(),
            VerticalGap(gap: 40),
            //saved list
            SavedListWidget(),
          ],
        ),
      ),
    );
  }
}
