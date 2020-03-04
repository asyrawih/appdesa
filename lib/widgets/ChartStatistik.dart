import 'package:flutter/material.dart';
import 'package:appdesa/model/ModelChart.dart';
import 'package:charts_flutter/flutter.dart' as charts;

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
      height: 500,
      width: 500,
      padding: EdgeInsets.all(20),
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: charts.BarChart(
                chart,
                animate: true,
              ),
            ),
            SizedBox(height: 20.0),
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
