import 'package:flutter/material.dart';
import 'package:timeline/model/timeline_model.dart';
import 'package:timeline/timeline.dart';

class TimelineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<TimelineModel> list = [
      TimelineModel(id: "1", description: "tes", title: 'teslagi'),
      TimelineModel(id: "1", description: "tes", title: 'teslagi'),
      TimelineModel(id: "1", description: "tes", title: 'teslagi'),
      TimelineModel(id: "1", description: "tes", title: 'teslagi'),
    ];
    return Scaffold(
      body: TimelineComponent(
        timelineList: list,
        lineColor: Colors.redAccent,
      ),
    );
  }
}
