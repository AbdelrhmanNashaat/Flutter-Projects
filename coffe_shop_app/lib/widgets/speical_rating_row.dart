import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';
class SpecialRatingWidget extends StatelessWidget {
  const SpecialRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: kGrayColor,
          size: 22,
        ),
        SizedBox(
          width: 3.5,
        ),
        LatoText(
          text: '4.9',
          fontSize: 16,
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ],
    );
  }
}