import 'package:flutter/material.dart';

import '../widgets/button.dart';
import '../widgets/gradient_container.dart';
import '../widgets/image.dart';
import 'dart:math';

String activeDiceImage = 'assets/images/dice 1.png';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
        widget: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageWidget(
              imagePath: activeDiceImage,
            ),
            const SizedBox(height: 60),
            ButtonWidget(
              onPressed: rollDice,
            ),
          ],
        ),
      ),
    );
  }

  void rollDice() {
    int diceRoll = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice $diceRoll.png';
    });
  }
}
