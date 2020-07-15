import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'living_home/livinghomeproject.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarBrightness: Brightness.light));

  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

     debugShowCheckedModeBanner:false,

      theme: ThemeData(
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor:Colors.white70
      ),
      home: LivingHomeProject(),
    );
  }
}

