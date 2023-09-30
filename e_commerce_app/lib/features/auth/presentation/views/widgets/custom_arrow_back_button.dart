import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/assets.dart';
class CustomArrowBackButton extends StatelessWidget {
  final VoidCallback onTap;
  const CustomArrowBackButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Image.asset(
        AssetsData.arrowBack,
        width: 24.w,
        height: 24.h,
      ),
    );
  }
}