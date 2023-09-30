import 'package:flutter/material.dart';

import 'lato_text.dart';

class PriceWidget extends StatelessWidget {
  final String drinkPrice;
  const PriceWidget({
    super.key,
    required this.drinkPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 160,
      left: 12,
      child: LatoText(
        text: drinkPrice,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
