import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Informasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Informasi',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            Icon(Icons.info)
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0),
            child: Container(
              height: 300.00,
              width: 364.00,
              decoration: BoxDecoration(
                color: containerBox,
                boxShadow: [boxShadow],
                borderRadius: BorderRadius.circular(10.00),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.info_outline,
                          color: Colors.white,
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Informasi Digital Desa',
                          style: GoogleFonts.aBeeZee(
                              color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Versi App 1.0',
                          style: GoogleFonts.aBeeZee(color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0),
                      height: 80,
                      width: 80,
                      child: Image.asset(
                        "assets/images/logo2.png",
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
