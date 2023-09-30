import 'package:coffe_shop_app/widgets/speical_rating_row.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';
class SpecialRow extends StatelessWidget {
  const SpecialRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const LatoText(
          text: 'With Chocolate',
          fontSize: 12,
          color: kWhiteColor,
          fontWeight: FontWeight.w400,
        ),
        Container(
          width: 70,
          height: 31,
          decoration: BoxDecoration(
            color: kBrownColor,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: const SpecialRatingWidget(),
        ),
      ],
    );
  }
}

