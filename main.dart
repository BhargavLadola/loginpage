import 'package:flutter/material.dart';
import 'package:loginpage/home.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen(seconds: 7,navigateAfterSeconds: Myhome(),backgroundColor: Colors.amber,
          loaderColor: Colors.lightBlue,),
      ),
    );
  }
}
