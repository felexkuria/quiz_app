import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.choosenAnswer});

  final List<String> choosenAnswer;

  List<Map<String, dynamic>> getSummaryData() {
    final List<Map<String, dynamic>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': dummyQuestions[i].questionText,
          'correct_answer': dummyQuestions[i].correctAnswer,
          'user_answer': choosenAnswer[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          children: [
            Text("You Have Answered X out of Y correctly!"),
            SizedBox(
              height: 30,
            ),
            Text("List Of Answer and Questions...."),
            SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
