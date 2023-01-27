import 'dart:math';

import 'package:flutter/material.dart';

class FlipCardController {
  _FlipCardWidgetState? _state;
  Future flipCard() async => _state?.flipCard();
}

class FlipCardWidget extends StatefulWidget {
  final FlipCardController controller;
  final Image front;
  final Image end;
  const FlipCardWidget(
      {Key? key,
      required this.front,
      required this.end,
      required this.controller})
      : super(key: key);

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget>
    with TickerProviderStateMixin {
  AnimationController? controller;
  bool isFront = true;
  var anglePlus = 0.0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      precacheImage(widget.front.image, context);
      precacheImage(widget.end.image, context);
    });
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 8000));
    widget.controller._state = this;
  }

  @override
  void dispose() {
    controller!.dispose();
    super.dispose();
  }

  Future flipCard() async {
    if (controller!.isAnimating) return;
    isFront = !isFront;
    // if (isFront) {
    //   await controller!.reverse();
    // } else {
    //   await controller!.forward();
    // }
    await controller!.forward(from: 0).then((value) => anglePlus = pi);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller!,
        builder: (context, c) {
          double angle = controller!.value * -pi;
          if (isFront) angle += anglePlus;
          final transform = Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(angle);
          return Transform(
              transform: transform,
              alignment: Alignment.center,
              child: isFrontImage(angle.abs())
                  ? widget.front
                  : Transform(
                      transform: Matrix4.identity()..rotateY(pi),
                      alignment: Alignment.center,
                      child: widget.end));
        });
  }

  isFrontImage(double angle) {
    const degrees90 = pi / 2;
    const degrees270 = 3 * pi / 2;
    return angle <= degrees90 || angle >= degrees270;
  }
}
