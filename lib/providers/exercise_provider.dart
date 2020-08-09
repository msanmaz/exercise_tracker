import 'package:flutter/material.dart';

class ExerciseProvider with ChangeNotifier {
  int _pullUpSets;
  int _pullUpReps;
  int _pushUpSets;
  int _pushUpReps;

  int get pullUpReps => _pullUpReps;
  int get pullUpSets => _pullUpSets;
  int get pushUpReps => _pushUpReps;
  int get pushUpSets => _pushUpSets;

  changeSets(String value) {
    _pullUpSets = int.parse(value);
    notifyListeners();
  }

  changeReps(String value) {
    _pullUpReps = int.parse(value);
    notifyListeners();
  }

  saveExercise() {
    print("$pullUpSets, $pullUpReps");
  }
}
