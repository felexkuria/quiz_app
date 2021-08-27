import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Quiz Is Done",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 36.0,
            color: Colors.black),
      ),
    );
  }
}
