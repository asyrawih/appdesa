import 'package:appdesa/model/syrat_model.dart';
import 'package:appdesa/style.dart';
import 'package:flutter/material.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:timeline/timeline.dart';

class TimelineScreen extends StatelessWidget {
  final List<Syrat> syrat ;

  const TimelineScreen({Key key, this.syrat}) : super(key: key); 
  
  @override
  Widget build(BuildContext context) {
    print(syrat);
    final List<TimelineModel> list = [
      TimelineModel(title: 'tes', description: 'title'),
      TimelineModel(title: 'tes', description: 'title'),
      TimelineModel(title: 'tes', description: 'title'),
      TimelineModel(title: 'tes', description: 'title'),
      TimelineModel(title: 'tes', description: 'title'),
      TimelineModel(title: 'tes', description: 'title'),
    ];
    return Scaffold(
      backgroundColor: bgColor,
      body: TimelineComponent(
        backgroundColor: bgColor,
        headingColor: Colors.white,
        timelineList: list,
        lineColor: Colors.redAccent,
      ),
    );
  }
}
