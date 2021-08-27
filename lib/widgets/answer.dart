import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;
  final String score;
  final VoidCallback selectedHandler;
  const Answer({Key? key, required this.answer, required this.selectedHandler, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 8.0),
      child: TextButton(
      onPressed: () {
        selectedHandler();
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
      ),
      child: Column(
        children: [
          Text(
            answer,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            score,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    ),  );
  }
}
