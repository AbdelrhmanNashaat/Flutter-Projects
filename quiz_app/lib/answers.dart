import 'package:flutter/material.dart';

import 'component/button.dart';

class Answers extends StatelessWidget {
  final String answer;
  final VoidCallback onPressed;
  const Answers({super.key, required this.answer, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        color: Colors.white,
        width: double.infinity,
        height: 82,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Button(text: answer, onPressed: onPressed),
            ),
            const Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
