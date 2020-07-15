import 'package:flutter/material.dart';
import 'package:lamp/living_home/lampSwitchrope.dart';
import 'package:lamp/living_home/lamp_switch.dart';
import 'package:lamp/living_home/ledbulb.dart';
import 'package:lamp/living_home/room_name.dart';

import 'lamp.dart';
import 'lamp_hanger_rope.dart';

final darkgrey = const Color(0xFF37474F);
final bulbOnColor = const Color(0xFFFFE12C);
final bulbOfColor = const Color(0xFFCFD8DC);

final animationDuration = const Duration(milliseconds: 500);

class LivingHomeProject extends StatefulWidget {
  @override
  _LivingHomeProjectState createState() => _LivingHomeProjectState();
}

class _LivingHomeProjectState extends State<LivingHomeProject> {
  var _isSwitchOn=false;


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LampHangerRope(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              color: darkgrey),
          LedBulb(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              onColor: bulbOnColor,
              offColor: bulbOfColor,
              isSwitchOn: _isSwitchOn,
               ),
          Lamp(
            screenWidth: screenWidth,
            screenHeight: screenHeight,
            color: darkgrey,
            isSwitchOn: _isSwitchOn,
            gradientColor: bulbOnColor,
            animationDuration: animationDuration,
          ),
          LampSwitch(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            toggleonColor: bulbOnColor,
            toggleoffColor: bulbOfColor,
            isSwitchOn:_isSwitchOn,
            animationDuration:animationDuration,

            color:darkgrey,
            onTap: (){
              setState(() {
                _isSwitchOn=!_isSwitchOn;

              });
            },
          ),
          LampSwitchRope(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              color: darkgrey,
              isSwitchOn: _isSwitchOn,
              animationDuration:animationDuration
          ),
          RoomName(
            screenWidth:screenWidth,
            screenHeight: screenHeight,
            color: darkgrey,
            roomName: _isSwitchOn?"'Enlight your dreams'":"off",
            isSwithOn: _isSwitchOn,
          )
        ],
      ),
    );
  }
}
