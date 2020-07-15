import 'package:flutter/material.dart';
import 'package:lamp/living_home/livinghomeproject.dart';
class RoomName extends StatelessWidget {
  final double screenWidth,screenHeight;
  final Color color;
  final String roomName;
  final Duration animationDuration=const Duration(seconds: 2);
  final bool isSwithOn;

  const RoomName({Key key, this.screenWidth, this.screenHeight, this.color, this.roomName,  this.isSwithOn}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: animationDuration,
      bottom: screenHeight*0.25,
      width: screenWidth,
      child: Center(
        child: Text(
          roomName.toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 26,
          ),
        ),
      ),
    );
  }
}
