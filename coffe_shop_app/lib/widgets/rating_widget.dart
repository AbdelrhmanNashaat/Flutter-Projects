import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.drinkRate,
  });

  final String drinkRate;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 18,
      left: 108,
      child: Container(
        width: 42,
        height: 18,
        decoration: BoxDecoration(
          color: kBrownColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.star,
              color: kGrayColor,
              size: 12,
            ),
            const SizedBox(
              width: 3.5,
            ),
            LatoText(
              text: drinkRate,
              fontSize: 10,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ],
        ),
      ),
    );
  }
}
