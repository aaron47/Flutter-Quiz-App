import "package:flutter/material.dart";

class Question extends StatelessWidget {
  final String questionText;

  const Question({Key? key, required this.questionText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Text(
          questionText,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 28),
        ));
  }
}
