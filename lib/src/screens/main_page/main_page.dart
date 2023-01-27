import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mvp/src/providers/navigation_provider/navigation_provider.dart';
import 'package:mvp/src/screens/discover_page/discover_page.dart';
import 'package:mvp/src/screens/home_page/home_page.dart';
import 'package:mvp/src/screens/live_page/live_page.dart';
import 'package:mvp/src/screens/saved_page/saved_page.dart';
import 'package:mvp/src/screens/wallet_page/wallet_page.dart';
import 'package:provider/provider.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var pages = [
      const HomePage(),
      const DiscoverPage(),
      const LivePage(),
      const WalletPage(),
      const SavedPage(),
    ];
    var size = MediaQuery.of(context).size;
    return Consumer<NavigationProvider>(builder: (context, v, c) {
      return WillPopScope(
        onWillPop: () {
          if (v.selected == 0) {
            v.changeSelected(0);
            return Future.value(true);
          } else {
            return Future.value(false);
          }
        },
        child: Container(
          color: Colors.black,
          child: Stack(
            children: [
              Image.asset(
                'assets/images/logo_3d.png',
                key: const ValueKey(true),
                height: size.height,
                width: size.width,
              ),
              Scaffold(
                backgroundColor: Colors.transparent,
                body: pages[v.selected],
                bottomNavigationBar: v.selected == 2
                    ? const SizedBox()
                    : BottomNavigationBar(
                        backgroundColor: Colors.transparent,
                        onTap: (value) => v.changeSelected(value),
                        currentIndex: v.selected,
                        type: BottomNavigationBarType.fixed,
                        items: [
                            BottomNavigationBarItem(
                                icon: Column(
                                  children: [
                                    SvgPicture.asset('assets/icons/home.svg'),
                                    v.selected != 0
                                        ? const SizedBox()
                                        : Container(
                                            height: 10,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.red,
                                            ),
                                          ),
                                  ],
                                ),
                                label: ""),
                            BottomNavigationBarItem(
                                icon: Column(
                                  children: [
                                    Column(
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/discover.svg'),
                                        const SizedBox(height: 5),
                                        v.selected != 1
                                            ? const SizedBox()
                                            : Container(
                                                height: 10,
                                                width: 15,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                  color: Colors.red,
                                                ),
                                              ),
                                      ],
                                    ),
                                  ],
                                ),
                                label: ""),
                            BottomNavigationBarItem(
                                icon: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.red,
                                  ),
                                  child: const Icon(Icons.add),
                                ),
                                label: ""),
                            BottomNavigationBarItem(
                                icon: Column(
                                  children: [
                                    SvgPicture.asset('assets/icons/wallet.svg'),
                                    const SizedBox(height: 5),
                                    v.selected != 3
                                        ? const SizedBox()
                                        : Container(
                                            height: 10,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.red,
                                            ),
                                          ),
                                  ],
                                ),
                                label: ""),
                            BottomNavigationBarItem(
                                icon: Column(
                                  children: [
                                    SvgPicture.asset('assets/icons/heart.svg'),
                                    const SizedBox(height: 5),
                                    v.selected != 4
                                        ? const SizedBox()
                                        : Container(
                                            height: 10,
                                            width: 15,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: Colors.red,
                                            ),
                                          ),
                                  ],
                                ),
                                label: ""),
                          ]),
                floatingActionButton: Platform.isLinux
                    ? IconButton(
                        onPressed: () {
                          v.changeSelected(0);
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      )
                    : null,
              ),
            ],
          ),
        ),
      );
    });
  }
}