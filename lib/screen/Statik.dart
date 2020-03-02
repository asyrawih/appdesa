import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appdesa/model/ModelChart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:appdesa/widgets/ChartStatistik.dart';

class Statik extends StatelessWidget {
  final List<ModelChart> data = [
    ModelChart(
      label: "Anak Anak",
      counter: 800,
      barColor: charts.ColorUtil.fromDartColor(Colors.red),
    ),
    ModelChart(
      label: "Dewasa",
      counter: 2000,
      barColor: charts.ColorUtil.fromDartColor(Colors.redAccent),
    ),
    ModelChart(
      label: "Lansia",
      counter: 12000,
      barColor: charts.ColorUtil.fromDartColor(Colors.greenAccent),
    ),
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
              'Statik',
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
        children: <Widget>[
          SingleChildScrollView(
            child: ChartStatistik(
              data: data,
            ),
          ),
        ],
      ),
    );
  }
}
