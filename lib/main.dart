import "package:flutter/material.dart";
import "./quiz.dart";
import "./result.dart";

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionNum = 0;
  int _totalScore = 0;
  void _nextQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionNum++;
    });
  }

  void _reset() {
    _totalScore = 0;
    setState(() {
      _questionNum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        "questionText": "What's your favourite color?",
        "answers": [
          {"text": "Black", "score": 10},
          {"text": "Purple", "score": 5},
          {"text": "Blue", "score": 6},
          {"text": "Red", "score": 7}
        ]
      },
      {
        "questionText": "What's your favourite animal?",
        "answers": [
          {"text": "Rabbit", "score": 2},
          {"text": "Lion", "score": 5},
          {"text": "Snake", "score": 10},
          {"text": "Spider", "score": 10}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("Quiz App")),
          body: _questionNum < questions.length
              ? Quiz(
                  nextQuestion: _nextQuestion,
                  questions: questions,
                  questionIndex: _questionNum)
              : Result(
                  reset: _reset,
                  totalScore: _totalScore,
                )),
    );
  }
}
