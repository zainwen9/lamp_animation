import 'package:flutter/material.dart';

class LampHangerRope extends StatelessWidget {
  const LampHangerRope(
      {super.key, required this.screenWidth, required this.screenHeight,required this.color});
  final double screenWidth, screenHeight;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenWidth*0.2,
      child: Container(
        width: 15,
        color: color,
        height: screenHeight*0.15,
      ),
    );
  }
}
