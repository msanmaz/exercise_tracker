import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BasicAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          leading: IconButton(icon: Icon(Icons.dehaze), onPressed: () {}),
          actions: <Widget>[
            // action button
            IconButton(
                icon: const Icon(Icons.fitness_center),
                tooltip: 'Next page',
                onPressed: () {}),
            IconButton(
              icon: const Icon(Icons.directions_bike),
              tooltip: 'Next page',
              onPressed: () {},
            )
          ],
          backgroundColor: Colors.deepOrangeAccent,
          elevation: 50.0,
          brightness: Brightness.dark,
        ),
        body: Results(),
      ),
    );
  }
}

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

void main() {
  runApp(BasicAppBarSample());
}
