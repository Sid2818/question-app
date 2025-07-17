import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': "What is your favourite color?",
      'ans': [
        {'text': 'blue', 'score': 1},
        {'text': 'black', 'score': 4},
        {'text': 'green', 'score': 2},
        {'text': 'red', 'score': 3},
      ]
    },
    {
      'question': "What is your favourite animal?",
      'ans': [
        {'text': 'lion', 'score': 3},
        {'text': 'elephant', 'score': 2},
        {'text': 'gooz', 'score': 1},
        {'text': 'monke', 'score': 4},
      ]
    },
    {
      'question': "What is your favourite activity?",
      'ans': [
        {'text': 'eating', 'score': 3},
        {'text': 'sleeping', 'score': 4},
        {'text': 'studying', 'score': 1},
        {'text': 'playing', 'score': 2},
      ]
    },
  ];
  var _qIndex = 0;
  var _tScore = 0;

  void _answerQ(int score) {
    _tScore += score;
    setState(() {
      _qIndex += 1;
    });
    print("Thou hath chosen this answer");
  }

  void _resetQuiz() {
    _tScore = 0;
    _qIndex = 0;
  }

  Widget build(BuildContext ctx) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text("Dis do be da quiz")),
          body: _qIndex < _questions.length
              ? Quiz(answerQ: _answerQ, questions: _questions, qIndex: _qIndex)
              : Result(_tScore, _resetQuiz)),
    );
  }
}
