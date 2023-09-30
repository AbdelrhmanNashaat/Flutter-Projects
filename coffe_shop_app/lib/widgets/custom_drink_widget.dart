import 'package:coffe_shop_app/widgets/price_widget.dart';
import 'package:coffe_shop_app/widgets/rating_widget.dart';
import 'package:flutter/material.dart';

import 'add_button.dart';
import 'details_widget.dart';
import 'drink_name.dart';

class CustomDrinkWidget extends StatelessWidget {
  final String drinkRate;
  final String drinkName;
  final String drinkDetails;
  final String drinkPrice;
  const CustomDrinkWidget({
    super.key, required this.drinkRate, required this.drinkName, required this.drinkDetails, required this.drinkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        RatingWidget(drinkRate: drinkRate),
        DrinkNameWidget(
          drinkName: drinkName,
        ),
        DetailsWidget(
          drinkDetails: drinkDetails,
        ),
        PriceWidget(
          drinkPrice: drinkPrice,
        ),
        const AddButton(),
      ],
    );
  }
}
