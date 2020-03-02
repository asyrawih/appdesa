import 'package:flutter/material.dart';
import 'package:appdesa/model/ModelChart.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:google_fonts/google_fonts.dart';

class ChartStatistik extends StatelessWidget {
  final List<ModelChart> data;
  ChartStatistik({@required this.data});
  @override
  Widget build(BuildContext context) {
    List<charts.Series<ModelChart, String>> chart = [
      charts.Series(
        id: 'Statistik',
        data: data,
        domainFn: (ModelChart chartku, _) => chartku.label,
        measureFn: (ModelChart chartku, _) => chartku.counter,
        colorFn: (ModelChart chartku, _) => chartku.barColor,
      ),
    ];
    return Container(
      height: 400,
      width: 400,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: <Widget>[
            Text(
              'tes',
              style: GoogleFonts.roboto(
                color: Colors.white,
              ),
            ),
            Expanded(
              child: charts.BarChart(
                chart,
                animate: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
