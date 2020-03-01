import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

import '../style.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Desa Digital',
                style: titleStyle,
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                'Selamat Datang Di Applikasi Digital Desa Bangun Jaya',
                style: subtitleStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 250,
                    width: 300,
                    child: Image.asset(
                      "assets/images/logo2.png",
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50.0,
              ),
              //IMplement GRID to hold our menus,bot for simplicity,i will use ROWS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildSoftUIMenu(
                      LineAwesomeIcons.money, Colors.cyanAccent, 'Dana Desa'),
                  _buildSoftUIMenu(LineAwesomeIcons.info,
                      Colors.deepOrangeAccent, 'Informasi'),
                  _buildSoftUIMenu(LineAwesomeIcons.map,
                      Colors.lightGreenAccent, 'Peta Desa'),
                ],
              ),

              SizedBox(height: 30.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _buildSoftUIMenu(LineAwesomeIcons.newspaper_o,
                      Colors.lightBlueAccent, 'Berita'),
                  _buildSoftUIMenu(LineAwesomeIcons.shopping_cart,
                      Colors.deepOrangeAccent, 'BUMdes'),
                  _buildSoftUIMenu(
                      LineAwesomeIcons.chain, Colors.yellowAccent, 'Pengaduan'),
                ],
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildSoftUIMenu(icon, color, title) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 100.0,
        width: 100.0,
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(16),
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
        child: Center(
          child: Icon(
            icon,
            size: 46,
            color: color,
          ),
        ),
      ),
      Text(
        title,
        style: subtitleStyle,
      ),
    ],
  );
}
