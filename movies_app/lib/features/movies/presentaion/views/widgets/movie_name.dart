import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/text_poppins.dart';
import 'custom_rating.dart';
class MovieName extends StatelessWidget {
  const MovieName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TextPoppins(
            text: 'Spider-Man', size: 26, fontWeight: FontWeight.w700),
        Container(
          height: 30,
          width: 65,
          decoration: BoxDecoration(
              color: const Color.fromRGBO(37, 40, 54, 0.32),
              borderRadius: BorderRadius.circular(8.0)),
          child: const CustomContainerRating(),
        ),
      ],
    );
  }
}