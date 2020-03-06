import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:timeline/timeline.dart';

class Pengaduan extends StatelessWidget {
  final List<TimelineModel> list = [
    TimelineModel(title: 'KADES SUNARSONO ', description: '085342955999'),
    TimelineModel(title: 'DUSUN PONOROGO', description: '082393694495'),
    TimelineModel(title: 'DUSUN SIDODADI', description: '085237329974'),
    TimelineModel(title: 'DUSUN SIDOREJO', description: '085259044409'),
    TimelineModel(title: 'DUSUN TUBAN', description: '0852555857254'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Pengaduan',
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
          SizedBox(
            height: 20.0,
          ),
          Expanded(
            child: TimelineComponent(
              backgroundColor: bgColor,
              headingColor: Colors.white,
              timelineList: list,
              lineColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
