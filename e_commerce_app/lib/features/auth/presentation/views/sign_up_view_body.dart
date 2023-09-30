
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/widgets/auth_image.dart';
import 'widgets/first_section_sign_up.dart';
import 'widgets/second_section_sign_up.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, right: 15, left: 15).r,
      child: ListView(
        children: [
          Column(
            children: [
              const AuthImage(),
              SizedBox(height: 20.h),
              const FirstSectionSignUp(),
              SizedBox(height: 14.h),
              const SecondSectionSignUp(),
            ],
          ),
        ],
      ),
    );
  }
}