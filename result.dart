import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  const Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You scored 30/$resultScore';

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(
          child: Text('Restart Quiz'),
          style: TextButton.styleFrom(onSurface: Colors.blueAccent),
          onPressed: resetHandler,
        )
      ]),
    );
  }
}
