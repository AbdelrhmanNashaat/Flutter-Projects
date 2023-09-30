import 'package:flutter/material.dart';

import '../constant.dart';
import 'lato_text.dart';
class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(kBrownColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
      onPressed: () => Navigator.pushReplacementNamed(context, '/homepage'),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
        child: LatoText(
          text: 'Get Started',
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: kGrayColor,
        ),
      ),
    );
  }
}