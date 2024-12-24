import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/question.dart';

import '../model/quiz_questions.dart';

class Result extends StatelessWidget {
  final List<QuizQuestion> questions;
  final List<String> userAnswers;
  final Function() onRestart;

  const Result({
    Key? key,
    required this.questions,
    required this.userAnswers,
    required this.onRestart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Let's break this down step by step!
// 1. questions.asMap() converts our list of questions into a map where indices are keys
// 2. .entries gives us key-value pairs we can iterate through
// 3. .where filters entries based on a condition - in this case:
//    - entry.value gives us the question
//    - entry.index gives us the position
//    - we check if correct answer matches user's answer at that position
// 4. .length counts how many answers were correct
// Think of it like counting how many true/false values match!
    final correctAnswers = questions.asMap().entries.where((entry) {
      return entry.value.correctAnswer == userAnswers[entry.key];
    }).length;

    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Quiz Complete!",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 36.0,
                color: Colors.black,
              ),
            ),
            Text(
              'Score: $correctAnswers/${questions.length}',
              style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ...questions.asMap().entries.map((entry) {
              final index = entry.key;
              final question = entry.value;
              final isCorrect = question.correctAnswer == userAnswers[index];

              return Card(
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question ${index + 1}: ${question.questionText}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Your Answer: ${userAnswers[index]}',
                        style: TextStyle(
                          color: isCorrect ? Colors.green : Colors.red,
                        ),
                      ),
                      Text(
                        'Correct Answer: ${question.correctAnswer}',
                        style: const TextStyle(color: Colors.green),
                      ),
                      Icon(
                        isCorrect ? Icons.check_circle : Icons.cancel,
                        color: isCorrect ? Colors.green : Colors.red,
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: onRestart,
              child: const Text('Restart Quiz'),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
