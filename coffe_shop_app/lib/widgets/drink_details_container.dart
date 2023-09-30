import 'package:coffe_shop_app/widgets/special_row.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';

class Drinkdetails extends StatelessWidget {
  const Drinkdetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kDrinkContainerColor,
      width: 395,
      height: 200,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LatoText(
              text: 'Cappuccino',
              fontSize: 28,
              color: kWhiteColor,
              fontWeight: FontWeight.w700,
            ),
            SpecialRow(),
          ],
        ),
      ),
    );
  }
}
