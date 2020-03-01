import 'package:appdesa/style.dart';
import 'package:appdesa/widgets/AlertDialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

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
          MenuInfo(),
        ],
      ),
    );
  }
}

class MenuInfo extends StatelessWidget {
  const MenuInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
      child: Container(
        height: 300.00,
        width: MediaQuery.of(context).size.width / .5,
        decoration: BoxDecoration(
          color: containerBox,
          boxShadow: [boxShadow],
          borderRadius: BorderRadius.circular(10.00),
        ),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: _buildSoftUIMenu(
                      LineAwesomeIcons.user, Colors.yellowAccent, 'Domisili'),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: _buildSoftUIMenu(
                      LineAwesomeIcons.map_signs, Colors.yellowAccent, 'Tanah'),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: _buildSoftUIMenu(
                      LineAwesomeIcons.lock, Colors.yellowAccent, 'Izin'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: _buildSoftUIMenu(
                      LineAwesomeIcons.cc_discover, Colors.yellowAccent, 'KTP'),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: _buildSoftUIMenu(
                      LineAwesomeIcons.gavel, Colors.yellowAccent, 'Skck'),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  child: InkWell(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: _buildSoftUIMenu(
                        Icons.help, Colors.yellowAccent, 'Help'),
                  ),
                ),
              ],
            ),
          ],
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
        margin: EdgeInsets.only(bottom: 5.0),
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
            size: 35,
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
