import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:exercise_tracker/providers/exercise_provider.dart';
import 'package:exercise_tracker/Exercise.dart';
import 'package:provider/provider.dart';

var cryptoData = ExcData.getData;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exerciseProvider = Provider.of<ExerciseProvider>(context);

    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 220,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white60,
          ),
          child: Padding(
            padding: EdgeInsets.all(7),
            child: Stack(children: <Widget>[
              Align(
                alignment: Alignment.centerRight,
                child: Stack(
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          children: <Widget>[
                            Row(children: <Widget>[setAmount(cryptoData)]),
                            new Row(
                              children: <Widget>[
                                new Flexible(
                                  child: new TextField(
                                    decoration: const InputDecoration(
                                        helperText: "Enter Reps"),
                                    onChanged: (value) {
                                      exerciseProvider.changeSets(value);
                                    },
                                  ),
                                ),
                                Expanded(
                                  child: new TextField(
                                    decoration: const InputDecoration(
                                        helperText: "Enter Sets"),
                                    onChanged: (value) {
                                      exerciseProvider.changeReps(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            RaisedButton(
                              onPressed: () {
                                exerciseProvider.saveExercise();
                              },
                              child: const Text('Submit',
                                  style: TextStyle(fontSize: 20)),
                            )
                          ],
                        ))
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Widget setAmount(data) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: '${data['exercise']}',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 23),
        ),
      ),
    );
  }
}
