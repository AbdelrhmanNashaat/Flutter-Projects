import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

import 'package:flutter_verification_code/flutter_verification_code.dart';

class VerificationCodeWidget extends StatelessWidget {
  const VerificationCodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: VerificationCode(
        onCompleted: (value) {},
        onEditing: (value) {},
        keyboardType: TextInputType.number,
        fullBorder: true,
        itemSize: 60,
        cursorColor: kGray500Color,
        underlineColor: kGray500Color,
        underlineUnfocusedColor: kGray500Color,
        underlineWidth: 1,
      ),
    );
  }
}
