import 'package:exercise_tracker/bottombar.dart';
import 'package:exercise_tracker/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:exercise_tracker/Exercise.dart';

const iconGym = 'assets/images/exercise.svg';

class Home extends StatelessWidget {
  /* Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );*/

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[MainFeed()]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        //top section
        children: <Widget>[middleSection, BottomNavBar()],
      ),
    );
  }
}
