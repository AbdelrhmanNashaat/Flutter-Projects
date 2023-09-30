import 'package:coffe_shop_app/constant.dart';
import 'package:flutter/material.dart';

import '../assets.dart';
import 'location_widget.dart';
import 'personal_image.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const PersonlImage(
            backgroundColor: kPersonColor,
            icon: Icon(
              Icons.person,
              size: 32,
              color: Colors.black,
            ),
            raduis: 28,
          ),
          const LocationWidget(),
          Image.asset(
            AssetsData.notificationIcon,
            scale: 0.9,
          ),
        ],
      ),
    );
  }
}
