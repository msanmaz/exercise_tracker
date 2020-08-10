import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:exercise_tracker/dashboard.dart';

const iconGym = 'assets/images/exercise.svg';

class Home extends StatelessWidget {
  Color hexToColor(String code) {
    return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }

  Widget get topSection => Container(
        height: 100.0,
        color: Colors.yellow[300],
      );

  Widget get mainFeed => Expanded(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            height: 10.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 10),
          ),
          Container(
            height: 10.0,
            color: Colors.green,
            margin: EdgeInsets.only(top: 10),
          )
        ],
      ));

  Widget get middleSection => Expanded(
      child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[mainFeed, ActionToolBar()]));

  Widget get bottomSectiom => Container(
        height: 80.0,
        color: Colors.blue[300],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //top section
        children: <Widget>[topSection, middleSection, bottomSectiom],
      ),
    );
  }
}
