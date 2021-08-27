import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,

            fontSize: 20.0,
            color: Colors.black),
      ),
    );
  }
}
