import "package:flutter/material.dart";
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final Function nextQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;
  const Quiz(
      {Key? key,
      required this.nextQuestion,
      required this.questions,
      required this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
            questionText: questions[questionIndex]["questionText"] as String),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
              answerText: answer["text"] as String,
              answerFun: () => nextQuestion(answer["score"]));
        }).toList()
      ],
    );
  }
}
