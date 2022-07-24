import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of application.

  final _questions = const [
    {
      'questionText': 'what\'s your favorite color?',
      'answers': [
        {'text': 'Pink', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 1}
      ],
    },
    {
      'questionText': 'what\'s your favorite flower?',
      'answers': [
        {'text': 'Rose', 'score': 8},
        {'text': 'Jasmine', 'score': 2},
        {'text': 'Lily', 'score': 3},
        {'text': 'Tulip', 'score': 1}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 4},
        {'text': 'Dog', 'score': 5},
        {'text': 'Lamb', 'score': 1},
        {'text': 'Cattle', 'score': 2}
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScores = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScores = 0;
    });
  }

  void _answerQuestions(int scores) {
    _totalScores += scores;
    // ignore: unused_element
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(_questionIndex);

      if (_questionIndex < _questions.length) {
        print('we have more questions');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test Taker and Evaluator App'),
        ),
        //backgroundColor: Colors.blue.withOpacity(0.5),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestions: _answerQuestions,
                questionIndex: _questionIndex)
            : Result(_totalScores, resetQuiz),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
