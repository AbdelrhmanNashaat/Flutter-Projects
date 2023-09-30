import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constant.dart';
import 'lato_text.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 320,
      decoration: BoxDecoration(
        color: kGrayColor,
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: kGray2Color,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  color: kGray3Color,
                ),
                SizedBox(width: 10),
                LatoText(
                  text: 'Search Coffee...',
                  fontSize: 14,
                  color: kGray2Color,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
            Icon(Icons.tune, size: 30, color: kBrownColor),
          ],
        ),
      ),
    );
  }
}
