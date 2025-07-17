import "package:flutter/material.dart";

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qIndex;
  final Function answerQ;

  Quiz({
    @required this.answerQ,
    @required this.qIndex,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[qIndex]['question']),
        ...(questions[qIndex]['ans'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQ(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
