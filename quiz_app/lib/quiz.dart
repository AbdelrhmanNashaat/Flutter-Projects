import 'package:flutter/material.dart';
import 'package:study/questions.dart';

import 'answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionsList;
  final int questionIndex;
  final Function(int score) answerQuestion;
  const Quiz(
      {super.key,
      required this.questionsList,
      required this.questionIndex,
      required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
            questionText: questionsList[questionIndex]['question'].toString()),
        ...(questionsList[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
            answer: answer['text'].toString(),
            onPressed: () => answerQuestion(
              int.parse(answer['score'].toString(),),
            ),
          );
        }).toList(),
      ],
    );
  }
}
