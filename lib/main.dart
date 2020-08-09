import 'package:exercise_tracker/home.dart';
import 'package:exercise_tracker/results.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:exercise_tracker/providers/exercise_provider.dart';

class BasicAppBarSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ExerciseProvider(),
      child: MaterialApp(
        home: Scaffold(
          body: Home(),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('AppBar'),
      leading: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => Results()));
          }),
      actions: <Widget>[
        // action button
        IconButton(
            icon: const Icon(Icons.fitness_center),
            tooltip: 'UpperBody',
            onPressed: () {}),
        IconButton(
          icon: const Icon(Icons.directions_bike),
          tooltip: 'LowerBody',
          onPressed: () {},
        )
      ],
      backgroundColor: Colors.black87,
      elevation: 50.0,
      brightness: Brightness.light,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

void main() {
  runApp(BasicAppBarSample());
}
