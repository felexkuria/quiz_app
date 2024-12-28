class QuizQuestion {
  String questionText;
  String correctAnswer;
  String explanation;
  final List<String> answerText;
  // String? shuffledAnswer;

  QuizQuestion(
      {required this.questionText,
      required this.answerText,
      required this.explanation,
      required this.correctAnswer});

  List<String> shuffleAnswer() {
    final shuffledList = List.of(answerText);
    shuffledList.shuffle();
    return shuffledList;
  }
}
