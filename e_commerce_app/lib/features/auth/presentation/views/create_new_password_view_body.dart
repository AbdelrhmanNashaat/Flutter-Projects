import 'package:e_commerce_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/styles.dart';
import '../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../core/utils/widgets/custom_text_form_field.dart';

class CreateNewPasswordViewBody extends StatefulWidget {
  const CreateNewPasswordViewBody({super.key});

  @override
  State<CreateNewPasswordViewBody> createState() =>
      _CreateNewPasswordViewBodyState();
}

class _CreateNewPasswordViewBodyState extends State<CreateNewPasswordViewBody> {
  bool obscureText1 = true;
  bool obscureText2 = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'Create New Password',
            onTap: () {
              GoRouter.of(context).pop('/verification_code_view');
            },
          ),
          SizedBox(height: 15.h),
          Text(
              'Please enter your email address to receive a\n verification code',
              style: Styles.textStyle13),
          SizedBox(height: 15.h),
          CustomTextFormFiled(
            hintText: 'Password',
            labelText: 'Password ',
            prefixIcon: const Icon(FontAwesomeIcons.lock, size: 20),
            suffixIcon: IconButton(
              icon: Icon(
                obscureText1 ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                size: 18,
              ),
              onPressed: () {
                setState(() {
                  obscureText1 = !obscureText1;
                });
              },
            ),
            obscureText: obscureText1,
          ),
          SizedBox(height: 20.h),
          CustomTextFormFiled(
            hintText: 'Password',
            labelText: 'Password ',
            prefixIcon: const Icon(FontAwesomeIcons.lock, size: 20),
            suffixIcon: IconButton(
              icon: Icon(
                obscureText2 ? FontAwesomeIcons.eyeSlash : FontAwesomeIcons.eye,
                size: 18,
              ),
              onPressed: () {
                setState(() {
                  obscureText2 = !obscureText2;
                });
              },
            ),
            obscureText: obscureText2,
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
              text: 'Reset Password',
              onPressed: () {
                GoRouter.of(context).push('/log_in_view');
              }),
        ],
      ),
    );
  }
}
