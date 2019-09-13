// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


 
class MyLoginPage extends StatefulWidget {
  MyLoginPage({Key key}) : super(key: key);
 
  @override
  _MyLoginPageState createState() => _MyLoginPageState();
}
 
class _MyLoginPageState extends State<MyLoginPage> {
  // final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text("My Firebase App", style: TextStyle(color: Colors.white)),
        // ),
        // backgroundColor: Color(0xffFFDDDD),
        body: Container(
            color: Color(0xffFFDDDD),
            child: Center(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      gradient: LinearGradient(
                          colors: [Colors.yellow[100], Colors.green[100]])),
                  margin: EdgeInsets.all(32),
                  padding: EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      buildTextFieldEmail(),
                      buildTextFieldPassword(),
                      buildButtonSignIn,
                    ],
                  )),
            )));
  }
 
  Container get buildButtonSignIn {
    return Container(
        constraints: BoxConstraints.expand(height: 50),
        child: Text("Sign in",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.white)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.green[200]),
        margin: EdgeInsets.only(top: 16),
        padding: EdgeInsets.all(12));
  //       Widget buildButtonSignIn() {
  //         return InkWell(
  //         onTap: () {
  //           signIn();
  //     },
  //   );
  // }
  }
 
  Container buildTextFieldEmail() {
    return Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: "Email"),
            style: TextStyle(fontSize: 18)));
  }
 
  Container buildTextFieldPassword() {
    return Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: Colors.yellow[50], borderRadius: BorderRadius.circular(16)),
        child: TextField(
            obscureText: true,
            decoration: InputDecoration.collapsed(hintText: "Password"),
            style: TextStyle(fontSize: 18)));
  }
  //   signIn(){
  //   _auth.signInWithEmailAndPassword(
  //       email: "duenchay.wo.60@ubu.ac.th",
  //       password: "cwKz5773"
  //   ).then((user) {
  //     print("signed in ${user.email}");
  //   }).catchError((error) {
  //      print(error);
  //   });
  // }
  // Future checkAuth(BuildContext context) async {
  //   FirebaseUser user = await _auth.currentUser();
  //   if (user != null) {
  //     print("Already singed-in with");
  //     Navigator.pushReplacement(
  //         context, MaterialPageRoute(builder: (context) => MyHomePage(user)));
  //   }
  // }
 
}
 