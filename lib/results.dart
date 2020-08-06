import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Results extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder(
            stream: Firestore.instance.collection("exercisupper").snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Text('Loading');
              return Column(
                children: <Widget>[
                  Text(snapshot.data.document[0]['pull-up reps'])
                ],
              );
            }));
  }
}
