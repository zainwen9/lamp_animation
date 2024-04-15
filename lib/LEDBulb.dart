import 'package:flutter/material.dart';

class LEDBulb extends StatelessWidget {
  const LEDBulb({
    super.key,
    this.screenWidth,
    this.screenHeight,
    this.color,
    this.onColor,
    this.offColor,
    this.isSwitchOn,
  });

  final double? screenWidth, screenHeight;
  final Color? color, onColor, offColor;
  final bool? isSwitchOn;
  final Duration? animationDuration=const Duration(milliseconds: 7000);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth!*0.1,
      top: screenHeight!*0.35,
      child: AnimatedContainer(
        duration: animationDuration!,
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSwitchOn != null ? (isSwitchOn! ? onColor : offColor) : null,
        ),
      ),
    );
  }
}
