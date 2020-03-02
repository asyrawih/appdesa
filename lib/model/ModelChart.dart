import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';

class ModelChart {
  final String label;
  final int counter;
  final charts.Color barColor;
  ModelChart(
      {@required this.label, @required this.counter, @required this.barColor});
}
