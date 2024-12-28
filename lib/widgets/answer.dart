import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final String score;
  final VoidCallback selectedHandler;
  const Answer(
      {Key? key,
      required this.answer,
      required this.selectedHandler,
      required this.score})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8.0),
      child: ElevatedButton(
        onPressed: selectedHandler,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.grey.shade600,
          padding: EdgeInsets.symmetric(vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
        ),
        child: Column(
          children: [
            Text(
              answer,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.5,
              ),
            ),
            // Text(
            //   score,
            //   style: TextStyle(
            //     color: Colors.white70,
            //     fontSize: 14,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
