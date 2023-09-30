import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_elevated_button.dart';
import '../heading_view_body.dart';

class CustomPageViewItem extends StatelessWidget {
  final String imagePath;
  final String elevatedButtonText;
  final VoidCallback elevatedButtonOnPressed;
  const CustomPageViewItem({
    super.key,
    required this.imagePath,
    required this.elevatedButtonText,
    required this.elevatedButtonOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(imagePath),
        SizedBox(height: 10.h),
        Text('Heading Here', style: Styles.textStyle22),
        SizedBox(height: 15.h),
        Text(
          'Lorem Ipsum is simply dummy text of the\n printing and typesetting industry.  Lorem Ipsum has been the industry\'s',
          style: Styles.textStyle14,
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 35.h),
        const CustomIndicator(),
        SizedBox(height: 15.h),
        CustomElevatedButton(
          onPressed: elevatedButtonOnPressed,
          text: elevatedButtonText,
        ),
      ],
    );
  }
}