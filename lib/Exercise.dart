import 'package:flutter/material.dart';

class MainFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
          new TextField(
            decoration: const InputDecoration(helperText: 'Enter Reps'),
          ),
          new TextField(
            decoration: const InputDecoration(helperText: 'Enter Sets'),
          ),
          RaisedButton(onPressed: () {}, child: Text('Submit'))
        ])));
  }
}
