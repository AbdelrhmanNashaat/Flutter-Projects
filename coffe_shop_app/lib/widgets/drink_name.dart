import 'package:flutter/material.dart';

import 'lato_text.dart';

class DrinkNameWidget extends StatelessWidget {
  final String drinkName;
  const DrinkNameWidget({
    super.key,
    required this.drinkName,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 120,
      left: 12,
      child: LatoText(
        text: drinkName,
        fontSize: 16,
        fontWeight: FontWeight.w800,
      ),
    );
  }
}
