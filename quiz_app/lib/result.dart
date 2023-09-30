import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatelessWidget {
  final VoidCallback resetQuiz;
  final int resultScore;
  const Result({super.key, required this.resetQuiz, required this.resultScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xffA689FF),
      child: Column(
        children: [
          Text(
            'Done',
            style: GoogleFonts.pacifico(fontSize: 80, color: Colors.white),
          ),
          Text(
            'Your Score Is : $resultScore/100',
            style: const TextStyle(
                fontSize: 26, color: Colors.white, fontFamily: 'Oswald'),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text(
              'Restart The App',
              style: TextStyle(
                  fontSize: 26, color: Colors.white, fontFamily: 'Oswald'),
            ),
          ),
        ],
      ),
    );
  }
}
