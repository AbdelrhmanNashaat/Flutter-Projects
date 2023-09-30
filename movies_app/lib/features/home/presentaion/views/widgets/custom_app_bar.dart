import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/widgets/text_poppins.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 30, right: 25.75),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextPoppins(
                text: 'Welcome !',
                size: 20,
                fontWeight: FontWeight.w600,
                color: kWhiteColor,
              ),
              TextPoppins(
                text: 'Let’s take a break from the world.',
                size: 14,
                fontWeight: FontWeight.w400,
                color: kWhiteColorWithOpacity1,
              ),
            ],
          ),
          CircleAvatar(
            radius: 28,
            child: Image.asset(
              AssetsData.ellipse,
              scale: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}
