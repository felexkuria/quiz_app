class QuizQuestion {
  String questionText;
  String correctAnswer;
  final List<String> answerText;
  // String? shuffledAnswer;

  QuizQuestion(
      {required this.questionText,
      required this.answerText,
      required this.correctAnswer});

  List<String> shuffleAnswer() {
    final shuffledList = List.of(answerText);
    shuffledList.shuffle();
    return shuffledList;
  }
}
