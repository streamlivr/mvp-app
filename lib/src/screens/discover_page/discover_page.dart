import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mvp/src/screens/discover_page/components/discover_list_widget.dart';
import 'package:provider/provider.dart';

import '../../providers/navigation_provider/navigation_provider.dart';
import '../../utils/constants.dart';
import '../../widgets/vertical_gap.dart';
import 'components/search_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text("Discover"),
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
            onPressed: () {
              Provider.of<NavigationProvider>(context, listen: false)
                  .changeSelected(5);
            },
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
            DiscoverListWidget(),
          ],
        ),
      ),
    );
  }
}
