import 'package:flutter/material.dart';

import '../assets.dart';
import 'container_drink.dart';

class DrinksRow extends StatelessWidget {
  const DrinksRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        DrinkContainer(
          imagePath: AssetsData.drink1,
          rate: '4.9',
          drinkDetails: 'With Chocolate',
          drinkName: 'Cappuccino',
          drinkPrice: '50 k',
        ),
        SizedBox(width: 15),
        DrinkContainer(
          imagePath: AssetsData.drink2,
          rate: '4.7',
          drinkDetails: 'With Low Fat Milk',
          drinkName: 'Cappuccino',
          drinkPrice: '45 k',
        ),
      ],
    );
  }
}
