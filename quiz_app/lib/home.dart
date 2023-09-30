import 'package:flutter/material.dart';
import 'package:study/quiz.dart';
import 'package:study/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionIndex = 0;
  int questionNumber = 1;
  int totalScore = 0;

  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
      questionNumber += 1;
    });
  }

  void resetQuiz() {
    totalScore = 0;
    setState(() {
      questionIndex = 0;
    });
  }

  final List<Map<String, Object>> questionsList = [
    {
      'question':
          'Which of the following country won Football world Cup maximum times?',
      'answer': [
        {'text': 'A. Germany', 'score': 0},
        {'text': 'B. Italy', 'score': 0},
        {'text': 'C. Argentina', 'score': 0},
        {'text': 'D. Brazil', 'score': 10},
      ],
    },
    {
      'question':
          'Who among the following player scores highest number of goals in Footbal World Cup?',
      'answer': [
        {'text': 'A. Jurgen Klinsmann', 'score': 0},
        {'text': 'B. Meradona', 'score': 0},
        {'text': 'C. Miroslave Klose', 'score': 10},
        {'text': 'D. Pele', 'score': 0},
      ],
    },
    {
      'question':
          'Which of the following term is recognized as an early form of football by FIFA?',
      'answer': [
        {'text': 'A. kemari', 'score': 0},
        {'text': 'B. Episkyros', 'score': 10},
        {'text': 'C. Cuju', 'score': 0},
        {'text': 'D. Inuit', 'score': 0},
      ],
    },
    {
      'question': 'When was the first FIFA World Cup inaugurated?',
      'answer': [
        {'text': 'A. 1930', 'score': 10},
        {'text': 'B. 1931', 'score': 0},
        {'text': 'C. 1932', 'score': 0},
        {'text': 'D. 1933', 'score': 0},
      ],
    },
    {
      'question': '5. Which of following team do not play in stripes?',
      'answer': [
        {'text': 'A. NewCastle', 'score': 0},
        {'text': 'B. Southampton', 'score': 0},
        {'text': 'C. Tottenham Hotspur', 'score': 10},
        {'text': 'D. Lincoln City', 'score': 0},
      ],
    },
    {
      'question':
          'Which of the following country hosted the first Football World Cup?',
      'answer': [
        {'text': 'A. America', 'score': 0},
        {'text': 'B. Argentina', 'score': 0},
        {'text': 'C. Brazil ', 'score': 0},
        {'text': 'D. Uruguay ', 'score': 10},
      ],
    },
    {
      'question':
          'Which country became the first nation to win the Football World Cup?',
      'answer': [
        {'text': 'A. Uruguay', 'score': 10},
        {'text': 'B. Germany', 'score': 0},
        {'text': 'C. Argentina', 'score': 0},
        {'text': 'D. Brazil', 'score': 0},
      ],
    },
    {
      'question':
          'When was first official international football match was played?',
      'answer': [
        {'text': 'A. 1929', 'score': 0},
        {'text': 'B. 1872', 'score': 10},
        {'text': 'C. 1902', 'score': 0},
        {'text': 'D. 1870', 'score': 0},
      ],
    },
    {
      'question':
          'Who among the following scored the first goal in World Cup history?',
      'answer': [
        {'text': 'A. Johino', 'score': 0},
        {'text': 'B. Bert Patenaude', 'score': 0},
        {'text': 'C. Lucien Laurent', 'score': 10},
        {'text': 'D. Pele', 'score': 0},
      ],
    },
    {
      'question':
          'Who among the following achieved the first World Cup hat-trick?',
      'answer': [
        {'text': 'A. Johino', 'score': 0},
        {'text': 'B. Bert Patenaude', 'score': 10},
        {'text': 'C. Lucien Laurent', 'score': 0},
        {'text': 'D. Pele', 'score': 0},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: const Color(0xffA689FF),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(
                Icons.close,
                size: 28,
              ),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('Get Started');
              },
            ),
          ),
        ],
      ),
      body: questionIndex < questionsList.length
          ? Stack(
              children: [
                Container(
                  color: const Color(0xffA689FF),
                  width: double.infinity,
                  height: 320,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 16.0),
                        child: Text(
                          '$questionNumber of 10',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Quiz(
                    questionsList: questionsList,
                    questionIndex: questionIndex,
                    answerQuestion: answerQuestion)
              ],
            )
          : Result(
              resetQuiz: resetQuiz,
              resultScore: totalScore,
            ),
    );
  }
}
