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
      {
        'questionText': 'Fav Color?',
        'answers': ['black', 'white', 'green', 'red']
      },
      {
        'questionText': 'Fav name?',
        'answers': ['Lisa', 'Typhany', 'Louis', 'Natasha']
      },
      {
        'questionText': 'Fav car?',
        'answers': ['Ferrari', 'Mustang', 'Camaro', 'Fusca']
      },
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((e) => Answer(onAnswer, e)).toList(),
        ],
      ),
    ));
  }
}
