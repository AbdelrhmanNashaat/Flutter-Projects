import 'package:flutter/material.dart';
import 'custom_drink_widget.dart';

class DrinkImageWidget extends StatelessWidget {
  final String imagePath;
  final String drinkRate;
  final String drinkName;
  final String drinkDetails;
  final String drinkPrice;
  const DrinkImageWidget({
    super.key,
    required this.imagePath,
    required this.drinkRate,
    required this.drinkName,
    required this.drinkDetails,
    required this.drinkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Image.asset(
            imagePath,
            scale: 0.6,
          ),
        ),
        CustomDrinkWidget(
          drinkDetails: drinkDetails,
          drinkName: drinkName,
          drinkPrice: drinkPrice,
          drinkRate: drinkRate,
        ),
      ],
    );
  }
}
