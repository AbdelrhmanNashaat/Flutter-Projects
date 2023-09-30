import 'package:flutter/material.dart';

import '../assets.dart';
import '../constant.dart';
import 'lato_text.dart';

class LimitedWidget extends StatelessWidget {
  const LimitedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 140,
      decoration: BoxDecoration(
        color: kWhiteColor,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(
          color: kWhiteColor,
        ),
        boxShadow: const [
          BoxShadow(
            color: kBlack2Color,
            blurRadius: 3.5,
            offset: Offset(0.8, 0.8),
          ),
        ],
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(AssetsData.drink3, scale: 0.6),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Container(
                    width: 60,
                    height: 24,
                    decoration: BoxDecoration(
                      color: kBrownColor,
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: const Center(
                      child: LatoText(
                        text: 'Limited',
                        fontSize: 10,
                        fontWeight: FontWeight.w900,
                        color: kWhiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const LatoText(
                    text: 'Buy 1 get 1 free\n if you buy with\n Gopay',
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
