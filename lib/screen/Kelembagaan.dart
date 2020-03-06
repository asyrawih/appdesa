import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Kelambagaan extends StatelessWidget {
  final ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Kelambagaan',
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0),
            ),
            Icon(Icons.info)
          ],
        ),
      ),
      body: SingleChildScrollView(
        reverse: true,
        controller: _controller,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'BPD',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 24.0),
                  ),
                  Icon(
                    Icons.arrow_downward,
                    color: Colors.white,
                    size: 23.0,
                  ),
                ],
              ),
              SizedBox(
                height: 35.0,
              ),
              Center(
                child: _buildFoto(LineAwesomeIcons.bar_chart,
                    Colors.yellowAccent, 'Statistik', 'assets/lembaga/5.jpg'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/1.jpg'),
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/2.jpg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/3.jpg'),
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/4.jpg'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/3.jpg'),
                  _buildFoto(LineAwesomeIcons.bar_chart, Colors.yellowAccent,
                      'Statistik', 'assets/lembaga/4.jpg'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildFoto(icon, color, title, gambar) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 150.0,
        width: 150.0,
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
            image: DecorationImage(image: AssetImage(gambar), fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                color: lightColor.withOpacity(0.1),
                offset: Offset(-6, -6),
                spreadRadius: 0,
                blurRadius: 6,
              ),
              BoxShadow(
                color: Colors.black26,
                offset: Offset(6, 6),
                spreadRadius: 0,
                blurRadius: 6,
              )
            ]),
        // child: Center(
        //   child: Icon(
        //     icon,
        //     size: 46,
        //     color: color,
        //   ),
        // ),
      ),
      Text(
        title,
        style: subtitleStyle,
      ),
    ],
  );
}
