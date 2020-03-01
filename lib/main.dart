import 'package:appdesa/views/HomePage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Desa Digital',
      theme: ThemeData(primaryColor: Color(0xff102733)),
      home: HomePage(),
    );
  }
}
