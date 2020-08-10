import 'package:flutter/material.dart';

class ActionToolBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      color: Colors.red[300],
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        _getAction(icon: Icons.fitness_center, title: 'Push-Ups'),
        _getAction(icon: Icons.directions_bike, title: 'Pull-Ups'),
      ]),
    );
  }

  Widget _getAction({String title, IconData icon}) {
    return Container(
        width: 60.0,
        height: 60.0,
        child: Column(
          children: [
            Icon(icon, size: 35.0, color: Colors.white),
            Padding(
              padding: EdgeInsets.only(top: 2.0),
              child: Text(title, style: TextStyle(fontSize: 12.0)),
            )
          ],
        ));
  }
}
