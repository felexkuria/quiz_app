import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/widgets/question_summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({required this.choosenAnswer, required this.onRestart});

  final List<String> choosenAnswer;
  final void Function() onRestart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choosenAnswer.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': dummyQuestions[i].questionText,
          'correct_answer': dummyQuestions[i].correctAnswer,
          'user_answer': choosenAnswer[i],
          'explaination': dummyQuestions[i].explanation
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final numCorrectAnswer = getSummaryData().where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;
    final numTotalQuestions = dummyQuestions.length;
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                child: Text(
                  "You Have Answered $numCorrectAnswer out of $numTotalQuestions Questions correctly!",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Questionsummary(summaryData: getSummaryData()),
              SizedBox(
                height: 30,
              ),
              Center(
                child: TextButton.icon(
                  onPressed: onRestart,
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                  ),
                  icon: const Icon(Icons.refresh),
                  label: const Text('Restart Quiz'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
