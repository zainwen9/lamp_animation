import 'package:flutter/material.dart';
import 'package:lamp/LEDBulb.dart';
import 'package:lamp/Lamp.dart';
import 'package:lamp/LampHangerRope.dart';
import 'package:lamp/lampSwitchRope.dart';
import 'package:lamp/lamp_switch.dart';
import 'package:lamp/room_name.dart';

final darkGray = const Color(0xFF232323);
final bulbOnColor = const Color(0xFFFFE12C);
final bulbOffColor = const Color(0xFFC1C1C1);
final animationDuration = const Duration(milliseconds: 500);

class LivingHomePage extends StatefulWidget {

  @override
  State<LivingHomePage> createState() => _LivingHomePageState();
}

class _LivingHomePageState extends State<LivingHomePage> {
    var _isSwitchOn=false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          LampHangerRope(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
          ),
          LEDBulb(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onColor: bulbOnColor,
              offColor: bulbOffColor,
              isSwitchOn: _isSwitchOn,

          ),
          Lamp(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            gradientColor: bulbOnColor,
            isSwitchOn: _isSwitchOn,
            animationDuration:animationDuration,
          ),
          LampSwitch(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            toggleOnColor: bulbOnColor,
            toggleOffColor: bulbOffColor,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            onTap: () {

              setState(() {
                _isSwitchOn = !_isSwitchOn;
              });
            },
            animationDuration: animationDuration,
          ),
          LampSwitchRope(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
          ),
          RoomName(
            screenWidth: screenWidth,
            screenHeight: screenWidth,
            color: darkGray,
            roomName: "living room",
          ),
        ],
      ),
    );
  }
}
