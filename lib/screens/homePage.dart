import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/model/quiz_questions.dart';
import 'package:quiz_app/screens/result_screen.dart';
import 'package:quiz_app/widgets/quiz.dart';
import 'package:quiz_app/widgets/result.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<QuizQuestion> questions = dummyQuestions;
  var _selectedIndex = 0;
  final List<String> selectedAnswers = [];
  var _score = 0;
  void answerQuestion(String answer) {
    //  _score += score;
    setState(() {
      _selectedIndex++;
    });
    chooseAnswer(answer);
  }

  onRestart() {
    setState(() {
      _selectedIndex = 0;
      selectedAnswers.clear();
      _score = 0;
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
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
        body: LayoutBuilder(builder: (context, constraints) {
          return Center(
            child: Container(
                width: constraints.maxWidth > 600
                    ? 600
                    : constraints.maxWidth * 0.95,
                child: _selectedIndex < questions.length
                    ? Quiz(
                        questions: questions,
                        selectedIndex: _selectedIndex,
                        answerQuestion: answerQuestion,
                      )
                    : ResultScreen(
                        choosenAnswer: selectedAnswers,
                        onRestart: onRestart,
                      )
                // : Result(
                //     questions: questions,
                //     userAnswers: selectedAnswers,
                //     onRestart: () {
                //       setState(() {
                //         _selectedIndex = 0;
                //         selectedAnswers.clear();
                //         _score = 0;
                //       });
                //     },
                //   ),
                ),
          );
        }),
      ),
    );
  }
}
