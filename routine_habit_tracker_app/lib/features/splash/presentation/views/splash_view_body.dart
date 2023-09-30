import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../assets.dart';
import '../../../../constant.dart';
import 'widgets/auth_back_ground_widget.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackGroundWidget(
      childWidget: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Assets.imagesVector),
            SizedBox(width: 20.w),
            SvgPicture.asset(Assets.imagesRoutiner),
          ],
        ),
      ),
    );
  }
}

class CustomCircularBackground extends StatelessWidget {
  final double opacity;
  final double containerWidth;
  final double containerHeight;
  const CustomCircularBackground({
    super.key,
    required this.opacity,
    required this.containerWidth,
    required this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: opacity,
        child: Container(
          width: containerWidth.w,
          height: containerHeight.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(containerWidth / 2).r,
            border: Border.all(color: kWhiteColor, width: 1.w),
          ),
        ),
      ),
    );
  }
}
