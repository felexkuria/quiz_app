import '../model/quiz_questions.dart';

List<QuizQuestion> dummyQuestions = [
  // Basic AWS service question testing knowledge of core services
  QuizQuestion(
    questionText:
        "Which AWS service is used for storing objects like files and images?",
    answerText: ["S3", "EC2", "RDS", "Lambda"],
    correctAnswer: 'S3',
    // S3 (Simple Storage Service) is Amazon's object storage service designed to store and retrieve any amount of data

    explanation:
        'S3 (Simple Storage Service) is Amazon\'s object storage service designed to store and retrieve any amount of data',
  ),

  // Question about AWS compute services
  QuizQuestion(
    questionText: "Which AWS service provides virtual servers in the cloud?",
    answerText: [
      "EC2",
      "S3",
      "DynamoDB",
      "CloudFront",
    ],
    correctAnswer: 'EC2',
    // EC2 (Elastic Compute Cloud) provides resizable compute capacity in the form of virtual servers
    explanation:
        'EC2 (Elastic Compute Cloud) provides resizable compute capacity in the form of virtual servers',
  ),

  // Question about AWS database services
  QuizQuestion(
    questionText: "Which AWS database service is a NoSQL database?",
    answerText: [
      "DynamoDB",
      "RDS",
      "Aurora",
      "Redshift",
    ],
    correctAnswer: 'DynamoDB',
    // DynamoDB is Amazon's fully managed NoSQL database service that provides fast and predictable performance
    explanation:
        'DynamoDB is Amazon\'s fully managed NoSQL database service that provides fast and predictable performance',
  ),

  // Question about AWS networking
  QuizQuestion(
    questionText:
        "Which AWS service is used to create isolated networks in the cloud?",
    answerText: [
      "VPC",
      "Route53",
      "CloudFront",
      "API Gateway",
    ],
    correctAnswer: 'VPC',
    // VPC (Virtual Private Cloud) lets you provision a logically isolated section of AWS Cloud where you can launch resources
    explanation:
        'VPC (Virtual Private Cloud) lets you provision a logically isolated section of AWS Cloud where you can launch resources',
  ),

  // Question about AWS security
  QuizQuestion(
    questionText:
        "Which AWS service manages access control and user permissions?",
    answerText: [
      "IAM",
      "CloudWatch",
      "SNS",
      "SQS",
    ],
    correctAnswer: 'IAM',
    // IAM (Identity and Access Management) enables you to manage access to AWS services and resources securely
    explanation:
        'IAM (Identity and Access Management) enables you to manage access to AWS services and resources securely',
  ),
];
