import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weekly Insight'),
      ),
    );
  }
}

class ExerciseTotal {
  final int exerciseId;
  final int pullUpSets;
  final int pullUpReps;
  final int pushUpSets;
  final int pushUpReps;

  ExerciseTotal(
      {this.pullUpReps,
      this.pullUpSets,
      this.pushUpReps,
      this.pushUpSets,
      this.exerciseId});
}
