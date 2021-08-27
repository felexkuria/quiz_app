import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/answer.dart';
import 'package:quiz_app/widgets/question.dart';
import 'package:quiz_app/widgets/quiz.dart';
import 'package:quiz_app/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, dynamic>> questions = const [
    {
      "questionText": "What'\s you Favourite color?",
      "answerText": [
        {"text": "Red", "score": 20},
        {"text": "Black", "score": 5},
        {"text": "Yellow", "score": 2},
        {"text": "Green", "score": 15}
      ]
    },
    {
      "questionText": "What'\s you Favourite Animal?",
      "answerText": [
        {"text": "Hare ", "score": 10},
        {"text": "Lion ", "score": 30},
        {"text": "Leopard ", "score": 15},
        {"text": "Zebra", "score": 20},
      ]
    },
    {
      "questionText": "When is Your Shift ?",
      "answerText": [
        {"text": "Monday", "score": 1},
        {"text": "Tuesday", "score": 1},
        {"text": "Wednesday ", "score": 1},
        {"text": "Thursday", "score": 1},
      ]
    },
  ];
  var _selectedIndex = 0;
  var _score=0;
  void answerQuestion( int score) {
_score+=score;
      setState(() {
        _selectedIndex++;
      });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_outlined),
            onPressed: () {
              setState(() {
                _selectedIndex--;
              });
            },
          ),
          title: Text("Quiz App"),
        ),
        body: _selectedIndex < questions.length
            ? Quiz(
                questions: questions,
                selectedIndex: _selectedIndex,
                answerQuestion: () {
answerQuestion(_score);
print(_score);
                },
              )
            : Result(),
      ),
    );
  }
}
