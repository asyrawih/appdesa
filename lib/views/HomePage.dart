import 'package:appdesa/screen/Berita.dart';
import 'package:appdesa/screen/BumDes.dart';
import 'package:appdesa/screen/DanaDesa.dart';
import 'package:appdesa/screen/Pelayanan.dart';
import 'package:appdesa/screen/Kelembagaan.dart';
import 'package:appdesa/screen/Pengaduan.dart';
import 'package:appdesa/screen/PetaDesa.dart';
import 'package:appdesa/screen/Statik.dart';
import 'package:appdesa/screen/Visi.dart';
import 'package:flutter/cupertino.dart';
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
              Text('Desa Digital', style: titleStyle),
              SizedBox(height: 20),
              Text('Selamat Datang Di Aplikasi Digital Desa Bangun Jaya',
                  style: subtitleStyle),
              SizedBox(height: 20),
              // !Logo
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
              SizedBox(height: 50.0),
              // ! Row 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DanaDesa()),
                      );
                    },
                    child: _buildSoftUIMenu(
                        LineAwesomeIcons.money, Colors.cyanAccent, 'Dana Desa'),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      // showAlertDialog(context);;
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pelayanan()),
                      );
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.info,
                        Colors.deepOrangeAccent, 'Pelayanan'),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PetaDesa(),
                      ));
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.map,
                        Colors.lightGreenAccent, 'Peta Desa'),
                  ),
                ],
              ),
              SizedBox(height: 30.0),
              // ! Row 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.transparent,
                    child: _buildSoftUIMenu(LineAwesomeIcons.newspaper_o,
                        Colors.lightBlueAccent, 'Berita'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Berita()),
                      );
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Bumdes()),
                      );
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.shopping_cart,
                        Colors.deepOrangeAccent, 'BUMdes'),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Pengaduan()),
                      );
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.chain,
                        Colors.yellowAccent, 'Pengaduan'),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              // ! Row 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    splashColor: Colors.transparent,
                    child: _buildSoftUIMenu(LineAwesomeIcons.vimeo_square,
                        Colors.lightBlueAccent, 'Visi & Misi'),
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Visi()),
                      );
                    },
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Kelambagaan()),
                      );
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.list_ol,
                        Colors.deepOrangeAccent, 'Kelembagaan'),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Statik()),
                      );
                    },
                    child: _buildSoftUIMenu(LineAwesomeIcons.bar_chart,
                        Colors.yellowAccent, 'Statistik'),
                  ),
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
