import 'package:flutter/material.dart';

import '../assets.dart';
import 'lato_text.dart';
class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const LatoText(
          text: 'Special Offer',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        const SizedBox(width: 4),
        Image.asset(
          AssetsData.fireEmoje,
          scale: 0.9,
        ),
      ],
    );
  }
}