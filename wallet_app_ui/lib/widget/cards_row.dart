import 'package:flutter/material.dart';

import 'buttons.dart';
class CardsRow extends StatelessWidget {
  const CardsRow({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonsView(
              imagePath: 'lib/icon/send-money.png', buttonText: 'Send'),
          ButtonsView(
              imagePath: 'lib/icon/credit-card.png', buttonText: 'Pay'),
          ButtonsView(
              imagePath: 'lib/icon/bill.png', buttonText: 'Bills'),
        ],
      ),
    );
  }
}
