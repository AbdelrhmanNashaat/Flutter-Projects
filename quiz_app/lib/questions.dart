import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;
  const Questions({super.key, required this.questionText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 16.0),
        child: Text(
          questionText,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 32.0,
              fontWeight: FontWeight.w600,
              fontFamily: 'Oswald'),
        ),
      ),
    );
  }
}
