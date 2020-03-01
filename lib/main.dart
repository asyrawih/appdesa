import 'package:appdesa/views/SplashScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desa Digital',
      theme: ThemeData(
        primaryColor: Color(0xff102733),
        splashColor: Colors.transparent,
        dialogBackgroundColor: Color(0xff102733),
        highlightColor: Colors.transparent
      ),
      home: SpScreen(),
    );
  }
}
