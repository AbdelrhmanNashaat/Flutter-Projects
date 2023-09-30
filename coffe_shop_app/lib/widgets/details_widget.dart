import 'package:flutter/material.dart';

import 'lato_text.dart';

class DetailsWidget extends StatelessWidget {
  final String drinkDetails;
  const DetailsWidget({
    super.key,
    required this.drinkDetails,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 145,
      left: 12,
      child: LatoText(
        text: drinkDetails,
        fontSize: 8,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
