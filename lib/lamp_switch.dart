import 'package:flutter/material.dart';
class LampSwitch extends StatelessWidget {
  final Function? onTap;
  final bool? isSwitchOn;
  final Color? toggleOnColor, toggleOffColor, color;
  final double? screenWidth, screenHeight;
  final Duration? animationDuration;

  const LampSwitch({
    this.onTap,
    this.isSwitchOn,
    this.screenWidth,
    this.screenHeight,
    this.animationDuration,
    this.toggleOnColor,
    this.toggleOffColor,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final toggleHeight = 70.0;
    final toggleWidth = 30.0;
    final circleSize = 24.0;
    final double circlePosition = isSwitchOn! ? toggleHeight - circleSize - 2 : 4;

    return Positioned(
      bottom: screenHeight! * 0.31,
      width: toggleWidth,
      left: screenWidth! * 0.5 - toggleWidth / 2,
      child: GestureDetector(
        onTap: onTap as void Function()? ?? () {},
        child: Stack(
          children: [
            AnimatedContainer(
              duration: animationDuration!,
              width: toggleWidth,
              height: toggleHeight,
              decoration: BoxDecoration(
                color: isSwitchOn! ? toggleOnColor : toggleOffColor,
                borderRadius: BorderRadius.circular(toggleWidth / 2),
              ),
            ),
            AnimatedPositioned(
              duration: animationDuration!,
              top: circlePosition,
              left: (toggleWidth - circleSize) / 2,
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                width: circleSize,
                height: circleSize,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
