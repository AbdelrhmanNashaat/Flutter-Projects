import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/text_poppins.dart';
class ListViewOfText extends StatelessWidget {
  const ListViewOfText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
            TextPoppins(
              text: 'Popular',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              width: 28,
            ),
            TextPoppins(
              text: 'New',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              width: 28,
            ),
            TextPoppins(
              text: 'Comedy',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              width: 28,
            ),
            TextPoppins(
              text: 'Drama',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(
              width: 28,
            ),
            TextPoppins(
              text: 'Horror',
              size: 16,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}