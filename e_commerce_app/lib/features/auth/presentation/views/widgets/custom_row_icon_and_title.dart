import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
class CustomRowIconAndTitle extends StatelessWidget {
  final String imagePath;
  final String text;
  const CustomRowIconAndTitle({
    super.key,
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath),
        SizedBox(width: 5.w),
        Text(
          text,
          style: Styles.textStyle14,
        ),
      ],
    );
  }
}