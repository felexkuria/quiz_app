// Import Flutter's Cupertino design system widgets
import 'package:flutter/cupertino.dart';

// StatelessWidget that displays a summary of questions and answers
class Questionsummary extends StatelessWidget {
  // Constructor requiring summaryData parameter
  Questionsummary({
    super.key,
    required this.summaryData,
  });
  // List of maps containing question data (index, question text, answers)
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    // Column widget to display items vertically
    return Column(
      // Map each data item to a Row widget
      children: summaryData.map((data) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display question number (index + 1) in a circle with background color
            Container(
              width: 30,
              height: 30,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: (data['user_answer'] == data['correct_answer'])
                    ? const Color.fromARGB(
                        255, 150, 198, 241) // Blue for correct
                    : const Color.fromARGB(
                        255, 249, 133, 241), // Pink for incorrect
                shape: BoxShape.circle,
              ),
              child: Text(
                ((data['question_index'] as int) + 1).toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 22, 2, 56),
                ),
              ),
            ),
            const SizedBox(width: 20), // Add spacing after circle
            // Expanded widget takes remaining horizontal space
            Expanded(
              // Column to show question details vertically
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Display question text
                  Text(
                    data['question'] as String,
                    textAlign: TextAlign.left,
                  ),
                  // Add 5 pixel vertical spacing
                  const SizedBox(
                    height: 5,
                  ),

                  Text(data['explaination'] as String),
                  // Display user's answer with check/x icon
                  Row(
                    children: [
                      Text(data['user_answer'] as String),
                      const SizedBox(width: 5),
                      Icon(
                        data['user_answer'] == data['correct_answer']
                            ? CupertinoIcons.checkmark_circle_fill
                            : CupertinoIcons.xmark_circle_fill,
                        color: data['user_answer'] == data['correct_answer']
                            ? CupertinoColors.systemGreen
                            : CupertinoColors.systemRed,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      }).toList(), // Convert map results to a list
    );
  }
}
