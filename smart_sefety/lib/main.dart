import 'package:flutter/material.dart'; //นำเข้าmaterial จากflutter
import 'package:smart_sefety/splash.dart';

void main() => runApp(MyApp());   //ประกาศ main 

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: SplashScreen(),
    ); //MaterialApp
  }
}