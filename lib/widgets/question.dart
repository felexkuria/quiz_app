import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Question extends StatelessWidget {
  final String question;
  const Question({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: GoogleFonts.lato(
            fontWeight: FontWeight.bold, fontSize: 24.0, color: Colors.black),
      ),
    );
  }
}
