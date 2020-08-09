/*
import 'package:exercise_tracker/providers/exercise_provider.dart';
import 'package:flutter/material.dart';
import 'package:exercise_tracker/Exercise.dart';
import 'package:provider/provider.dart';

var cryptoData = ExcData.getData;
*/
/*
class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final exerciseProvider = Provider.of<ExerciseProvider>(context);
    return Scaffold(
        body: Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: cryptoData.length,
                itemBuilder: (context, index) {
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
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5),
                                      child: Column(
                                        children: <Widget>[
                                          Row(children: <Widget>[
                                            setAmount(cryptoData[index])
                                          ]),
                                          new Row(
                                            children: <Widget>[
                                              new Flexible(
                                                child: new TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          helperText:
                                                              "Enter Reps"),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                  onChanged: (value) {
                                                    exerciseProvider
                                                        .changeSets(value);
                                                  },
                                                ),
                                              ),
                                              Expanded(
                                                child: new TextField(
                                                  decoration:
                                                      const InputDecoration(
                                                          helperText:
                                                              "Enter Sets"),
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText2,
                                                  onChanged: (value) {
                                                    exerciseProvider
                                                        .changeReps(value);
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
                }),
          ),
        ],
      ),
    ));
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
*/
