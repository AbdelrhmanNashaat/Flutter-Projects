import 'package:flutter/material.dart';

import '../assets.dart';
import '../constant.dart';
import 'drink_widget.dart';

class DrinksTextRow extends StatelessWidget {
  const DrinksTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DrinkWidget(
          color: kBrownColor,
          imagePath: AssetsData.icon1,
          text: 'Cappuccino',
          textColor: Colors.white,
        ),
        DrinkWidget(
          imagePath: AssetsData.icon2,
          text: 'Cold Brew',
          textColor: kBrownColor,
        ),
        DrinkWidget(
          imagePath: AssetsData.icon3,
          text: 'Expresso',
          textColor: Colors.black,
        ),
      ],
    );
  }
}
