import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  var resultScore = 0;
  final Function reset;

  Result(this.resultScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (resultScore < 5) {
      resultText = 'You be da awesome!!';
    } else if (resultScore < 9) {
      resultText = 'You be kinda cool!';
    } else if (resultScore < 13) {
      resultText = 'You be okay';
    } else {
      resultText = 'You be weird bruh';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: reset,
            child: Text('Restart quiz'),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
