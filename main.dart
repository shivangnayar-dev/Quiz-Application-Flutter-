import 'package:flutter/material.dart';

import 'result.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questiontext': 'what\'s the capital of  India?',
      'answers': [
        {'text': 'Delhi', 'score': 10},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Chennai', 'score': 0},
        {'text': 'Goa', 'score': 0},
      ],
    },
    {
      'questiontext': 'national bird of india?',
      'answers': [
        {'text': ' peacock', 'score': 10},
        {'text': 'Crow', 'score': 0},
        {'text': 'Eagle', 'score': 0},
        {'text': 'bat', 'score': 0},
      ],
    },
    {
      'questiontext': 'Taj Mahal is located in?',
      'answers': [
        {'text': 'Delhi', 'score': 0},
        {'text': 'Mumbai', 'score': 0},
        {'text': 'Agra', 'score': 10},
        {'text': 'Goa', 'score': 0},
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('my first app'),
      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions,
            )
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
