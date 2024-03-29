import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mvp/src/screens/live_page/live_page2.dart';

import '../../utils/constants.dart';

class LivePage extends StatelessWidget {
  const LivePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var userId = FirebaseAuth.instance.currentUser!.uid;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: kAnimationDuration,
                      pageBuilder: ((context, animation, _) {
                        return FadeTransition(
                          opacity: animation,
                          child: LivePage2(
                            isHost: true,
                            userId: userId,
                          ),
                        );
                      }),
                    ),
                  );
                },
                child: const Text('Go live'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      transitionDuration: kAnimationDuration,
                      pageBuilder: ((context, animation, _) {
                        return FadeTransition(
                          opacity: animation,
                          child: LivePage2(
                            isHost: false,
                            userId: userId,
                          ),
                        );
                      }),
                    ),
                  );
                },
                child: const Text('Join stream'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
