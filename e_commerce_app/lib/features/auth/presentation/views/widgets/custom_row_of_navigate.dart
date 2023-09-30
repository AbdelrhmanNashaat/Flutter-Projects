import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';

class CustomRowOfNavigate extends StatelessWidget {
  final String text1;
  final String text2;
  final VoidCallback onPressed;
  const CustomRowOfNavigate({
    super.key,
    required this.onPressed,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: Styles.textStyle13),
        CustomTextButton(
          text: text2,
          onPressed: onPressed,
          textStyle: Styles.textStyle14.copyWith(
              color: kStandardYellowColor, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
