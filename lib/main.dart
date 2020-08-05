import 'package:exercise_tracker/Exercise.dart';
import 'package:flutter/material.dart';

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
        body: Dashboard(),
      ),
    );
  }
}

var cryptoData = CryptoData.getData;

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
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
                          border: Border(
                            top: BorderSide(width: 2.0),
                          ),
                          color: Colors.white,
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
                                                ),
                                              ),
                                            ],
                                          ),
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
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 20),
        ),
      ),
    );
  }
}

void main() {
  runApp(BasicAppBarSample());
}
