import 'package:appdesa/screen/TimelineScreen.dart';
import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class PelayananRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syrat dan Ketentuan'),
      ),
      backgroundColor: bgColor,
      body: Column(
        children: <Widget>[
          Expanded(
            child: TimelineScreen(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(LineAwesomeIcons.whatsapp),
        tooltip: 'request ke admin',
      ),
    );
  }
}
