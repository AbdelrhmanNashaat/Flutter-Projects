import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';
import '../heading_view_body.dart';

class PageViewItem extends StatelessWidget {
  final String imagePath;
  final String elevatedButtonText;
  final VoidCallback elevatedButtonOnPressed;
  final String textButtonText;
  final VoidCallback textButtonOnPressed;
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.elevatedButtonText,
    required this.elevatedButtonOnPressed,
    required this.textButtonText,
    required this.textButtonOnPressed,
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
        SizedBox(height: 15.h),
        CustomTextButton(
          onPressed: textButtonOnPressed,
          text: textButtonText,
          textStyle: Styles.textStyle18,
        ),
        SizedBox(height: 15.h),
      ],
    );
  }
}
