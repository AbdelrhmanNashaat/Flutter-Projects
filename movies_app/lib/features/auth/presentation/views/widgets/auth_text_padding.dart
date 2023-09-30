import 'package:flutter/material.dart';

import '../../../../../constant.dart';
import 'auth_text.dart';

class AuthTextPadding extends StatelessWidget {
  final String text1;
  final String text2;
  const AuthTextPadding({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: Column(
        children: [
          AuthText(
            text: text1,
            size: 24,
            fontWeight: FontWeight.w600,
            color: kBlackColor,
          ),
          const SizedBox(height: 15),
          AuthText(
            text: text2,
            size: 16,
            fontWeight: FontWeight.w400,
            color: kBlackColor,
          ),
        ],
      ),
    );
  }
}
