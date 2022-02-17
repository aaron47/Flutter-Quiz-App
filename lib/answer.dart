import "package:flutter/material.dart";

class Answer extends StatelessWidget {
  final VoidCallback answerFun;
  final String answerText;

  const Answer({Key? key, required this.answerFun, required this.answerText})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerFun,
      ),
    );
  }
}
