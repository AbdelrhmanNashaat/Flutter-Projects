import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../home/presentaion/views/widgets/custom_rating_row.dart';
class CustomContainerRating extends StatelessWidget {
  const CustomContainerRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8),
      child: CustomRatingRow(
        movieRate: '9.5',
        icon: Icon(
          Icons.star,
          size: 22,
          color: kSecondryColor,
        ),
        color: kSecondryColor,
        textSize: 14,
      ),
    );
  }
}