import 'package:flutter/cupertino.dart';
import 'package:quiz_app/widgets/answer.dart';
import 'package:quiz_app/widgets/question.dart';

import '../model/quiz_questions.dart';

class Quiz extends StatelessWidget {
  final List<QuizQuestion> questions;
  final void Function(String selectedAnswer) answerQuestion;
  final int selectedIndex;
  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.selectedIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question: questions[selectedIndex].questionText,
        ),
        ...questions[selectedIndex].answerText.map((answer) {
          return Answer(
            selectedHandler: () {
              answerQuestion(answer);

              print(answer);
            },
            answer: answer,
            score: answer.toString(),
          );
        }).toList(),
      ],
    );
  }
}
