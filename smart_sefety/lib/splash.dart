import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'login/login.dart';

class SplashScreen extends StatelessWidget {

  static TextStyle style = TextStyle(fontSize: 30.0,);
  //making list of pages needed to pass in IntroViewsFlutter constructor.
  final pages = [
    PageViewModel(     //สไลด์อันแรก
        pageColor: const Color(0xFF03A9F4),
        body: Text(
          'Natural Disaster',
          
        ), 
        bubble: Image.asset('assets/air-hostess.png'),
        
        title: Text(
          '',
        ),
        textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
        mainImage: Image.asset(
          'assets/airplane.png',
          height: 285.0,
          width: 285.0,
          alignment: Alignment.center,
        )),
    PageViewModel(    //สไลด์อันที่2
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Emergency',style: style,
      ),
      iconImageAssetPath: 'assets/bus-driver.png',
      
      title: Text(''),
      mainImage: Image.asset(
        'assets/bus.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
    ),
    PageViewModel(  //สไลด์อันที่3
      pageColor: const Color(0xFF607D8B),
      body: Text(
        'Chart',style: style,
      ),
      iconImageAssetPath: 'assets/hotel.png',
      title: Text(''),
      mainImage: Image.asset(
        'assets/waiter.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
    ),
     PageViewModel(    //สไลด์อันที่4
      pageColor: const Color(0xFF8BC34A),
      body: Text(
        'Chats',style: style,
      ),
      iconImageAssetPath: 'assets/bus-driver.png',
      
      title: Text(''),
      textStyle: TextStyle(fontFamily: 'MyFont', color: Colors.black),
      mainImage: Image.asset(
        'assets/bus.png',
        height: 285.0,
        width: 285.0,
        alignment: Alignment.center,
      ), 
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IntroViews Flutter', //title of app
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ), //ThemeData
      home: Builder(
        builder: (context) => IntroViewsFlutter(
          pages,
          onTapDoneButton: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MyLoginPage(),
              ), //MaterialPageRoute
            );
          },
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ), //IntroViewsFlutter
      ), //Builder
    ); //Material App
  }
}