import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/auth_image.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

class FirstSectionLogIn extends StatefulWidget {
  const FirstSectionLogIn({super.key});

  @override
  State<FirstSectionLogIn> createState() => _FirstSectionLogInState();
}

bool obscureText = true;

class _FirstSectionLogInState extends State<FirstSectionLogIn> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity.sw,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AuthImage(),
          SizedBox(height: 25.h),
          Text(
            'Create Account',
            style: Styles.textStyle20,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 15.h),
          Text('Enter your email and password', style: Styles.textStyle13),
          SizedBox(height: 25.h),
          const CustomTextFormFiled(
            hintText: 'Gmail ',
            labelText: 'Gmail ',
            prefixIcon: Icon(FontAwesomeIcons.envelope),
          ),
          SizedBox(height: 30.h),
          CustomTextFormFiled(
            hintText: 'Password',
            labelText: 'Password ',
            prefixIcon: const Icon(
              FontAwesomeIcons.lock,
              size: 20,
            ),
            suffixIcon: IconButton(
              icon: Icon(
                obscureText ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                size: 18,
              ),
              onPressed: () => iconChangeMethod(),
            ),
            obscureText: obscureText,
          ),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }

  void iconChangeMethod() {
    return setState(() {
      obscureText = !obscureText;
    });
  }
}
