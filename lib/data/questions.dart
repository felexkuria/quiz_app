import '../model/quiz_questions.dart';

List<QuizQuestion> dummyQuestions = [
  QuizQuestion(
    questionText: "What's your Favourite color?",
    answerText: ["Red", "Black", "Yellow", "Green"],
    correctAnswer: 'Red',
  ),
  QuizQuestion(
      questionText: "What's your Favourite Animal?",
      answerText: [
        "Hare",
        "Lion",
        "Leopard",
        "Zebra",
      ],
      correctAnswer: 'Hare'),
  QuizQuestion(
    questionText: "When is Your Shift?",
    answerText: [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
    ],
    correctAnswer: 'Monday',
  ),
];
