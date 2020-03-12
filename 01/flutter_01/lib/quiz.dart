import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function onAnswer;

  Quiz(
      {
      @required this.questions,
      @required this.onAnswer,
      @required this.questionIndex});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Question(questions[questionIndex]['questionText']),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((e) => Answer(onAnswer, e))
                .toList(),
          ],
        )
      ],
    );
  }
}
