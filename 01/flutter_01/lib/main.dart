import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void onAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print("BUtton pressed");
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Fav Color',
      'Fav name'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: <Widget>[
          Question(questions[questionIndex]),
          Answer(onAnswer),
        ],
      ),
    ));
  }
}
