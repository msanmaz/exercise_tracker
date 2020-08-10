import 'package:flutter/material.dart';

class DpullUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
