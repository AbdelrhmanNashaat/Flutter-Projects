import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constant.dart';
import '../assets.dart';
class AuthImage extends StatelessWidget {
  const AuthImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 122.w,
          height: 122.h,
          decoration: BoxDecoration(
            color: kGrayColor,
            borderRadius: BorderRadius.circular(61.0).r,
          ),
        ),
        Positioned(
          left: 30.5,
          top: 30.5,
          child: Image.asset(
            AssetsData.splashImage,
            height: 78.75,
            width: 79.81,
          ),
        ),
      ],
    );
  }
}