import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'login/login.dart'; //หน้า login.dart

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();

    slides.add( //สไลด์อันแรก
      new Slide(
        title: "Natural Disaster",
        // description:
        //     "1",
        styleDescription:
            TextStyle(height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
      ),
    );
    slides.add( //สไลด์อันที่2
      new Slide(
        title: "Emergency",
        pathImage: "assets/bus.png",
        styleDescription:
            TextStyle(fontFamily: 'MyFont',height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
        
      ),
    );
    slides.add( //สไลด์อันที่3
      new Slide(
        title: "Chart",
        styleDescription:
            TextStyle(height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
      ),
    );
    slides.add( //สไลด์อันที่4
      new Slide(
        title: "Chats",
        styleDescription:
            TextStyle(height: 1.3, fontSize: 20, color: Colors.black),
        backgroundColor: Color(0xffDFD579),
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyLoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      slides: this.slides,
      onDonePress: this.onDonePress,
    );
  }
}