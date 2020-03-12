import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Fav Color?',
      'answers': [{ 'text':'black', 'score': 10 }, {'text': 'white', 'score': 5 }, 
      {'text':'green', 'score': 20 }, {'text': 'red', 'score': 30}]
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
  var _questionIndex = 0;

  void _onAnswer() {
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("BUtton pressed");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(onAnswer: _onAnswer, questions: _questions, questionIndex: _questionIndex,)
          : Result(),
    ));
  }
}
