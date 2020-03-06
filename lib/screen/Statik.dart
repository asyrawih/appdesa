import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:appdesa/model/ModelChart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:appdesa/widgets/ChartStatistik.dart';

class Statik extends StatelessWidget {
  final List<ModelChart> data = [
    ModelChart(
      label: "Laki Laki",
      counter: 1303,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    ModelChart(
      label: "Perempuan",
      counter: 1300,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ModelChart(
      label: "Total L+P",
      counter: 2603,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
  ];

  final List<ModelChart> data2 = [
    ModelChart(
      label: "Laki Laki",
      counter: 100,
      barColor: charts.ColorUtil.fromDartColor(Colors.yellow),
    ),
    ModelChart(
      label: "Perempuan",
      counter: 200,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
    ),
    ModelChart(
      label: "Total L+P",
      counter: 300,
      barColor: charts.ColorUtil.fromDartColor(Colors.green),
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
      body: Row(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ChartStatistik(
                  data: data,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
