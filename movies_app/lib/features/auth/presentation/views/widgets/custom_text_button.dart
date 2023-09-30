import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/text_poppins.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final VoidCallback onPressed;
  const CustomTextButton({
    super.key,
    required this.text,
    required this.size,
    required this.fontWeight,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: TextPoppins(text: text, size: size, fontWeight: fontWeight),
    );
  }
}
