import 'package:appdesa/style.dart';
import 'package:appdesa/views/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:splashscreen/splashscreen.dart';

class SpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: HomePage(),
      backgroundColor: bgColor,
      title:
          Text('Mohon Tunggu', style: GoogleFonts.roboto(color: Colors.white)),
      image: Image.asset("assets/images/logo2.png"),
      photoSize: 100.0,
    );
  }
}
