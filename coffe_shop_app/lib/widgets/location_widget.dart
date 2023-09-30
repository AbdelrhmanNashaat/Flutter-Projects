import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';
class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        Icon(Icons.location_on, color: kBrownSecondryColor, size: 28),
        LatoText(
          text: 'Egypt, Cairo',
          fontSize: 14,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        )
      ],
    );
  }
}