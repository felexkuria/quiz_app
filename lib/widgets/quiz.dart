import 'package:flutter/cupertino.dart';
import 'package:quiz_app/widgets/answer.dart';
import 'package:quiz_app/widgets/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final Function answerQuestion;
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
          question: questions[selectedIndex]["questionText"],
        ),
        ...questions[selectedIndex]["answerText"].map((answer) {
          return Answer(
            selectedHandler: () {
              return answerQuestion();
            },
            answer: answer["text"], score: answer["score"].toString(),
          );
        }).toList(),
      ],
    );
  }
}
