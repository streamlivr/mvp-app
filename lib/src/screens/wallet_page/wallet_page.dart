import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
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
      body: const Center(
        child: Text('WalletPage'),
      ),
    );
  }
}
