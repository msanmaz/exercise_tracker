import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //top section
        children: <Widget>[
          Container(
            height: 100.0,
            color: Colors.yellow[300],
          ),

          //middle section
          Expanded(
              child: Row(children: <Widget>[
            Expanded(child: Container(color: Colors.green[300])),
            Container(
              width: 100.0,
              color: Colors.red[300],
            )
          ])),

          //bottom section
          Container(height: 80.0, color: Colors.blue[300])
        ],
      ),
    );
  }
}
