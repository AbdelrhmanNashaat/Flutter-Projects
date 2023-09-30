import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_arrow_back_button.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomAppBar({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomArrowBackButton(
          onTap: onTap,
        ),
        SizedBox(width: 55.w),
        Text(
          text,
          style: Styles.textStyle20,
        ),
      ],
    );
  }
}
