import 'package:flutter/material.dart';

import 'lato_text.dart';

class DrinkWidget extends StatelessWidget {
  final Color? color;
  final Color? textColor;
  final String imagePath;
  final String text;
  const DrinkWidget({
    super.key,
    this.color,
    required this.imagePath,
    required this.text,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 99,
      height: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33.0),
        color: color,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 16,
              height: 16,
            ),
            const SizedBox(width: 3),
            LatoText(
              text: text,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ],
        ),
      ),
    );
  }
}
