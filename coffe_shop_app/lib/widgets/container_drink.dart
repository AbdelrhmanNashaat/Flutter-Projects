import 'package:flutter/material.dart';

import '../constant.dart';
import '../screens/cappunccino_view.dart';
import 'drink_image.dart';

class DrinkContainer extends StatelessWidget {
  final String imagePath;
  final String rate;
  final String drinkName;
  final String drinkDetails;
  final String drinkPrice;
  const DrinkContainer({
    super.key,
    required this.imagePath,
    required this.rate,
    required this.drinkName,
    required this.drinkDetails,
    required this.drinkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CappunccinoView())),
      child: Container(
        width: 165,
        height: 184,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
            color: kWhiteColor,
          ),
          boxShadow: const [
            BoxShadow(
              color: kBlack2Color,
              blurRadius: 0.5,
              offset: Offset(0.8, 0.8),
            ),
          ],
        ),
        child: DrinkImageWidget(
          imagePath: imagePath,
          drinkRate: rate,
          drinkDetails: drinkDetails,
          drinkName: drinkName,
          drinkPrice: drinkPrice,
        ),
      ),
    );
  }
}
