import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:e_commerce_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/widgets/custom_text_form_field.dart';
import 'widgets/custom_app_bar.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'Forget Password',
            onTap: () => GoRouter.of(context).pop('/log_in_view'),
          ),
          SizedBox(height: 15.h),
          Text(
              'Please enter your email address to receive a\n verification code',
              style: Styles.textStyle13),
          SizedBox(height: 15.h),
          const CustomTextFormFiled(
            hintText: 'Gmail',
            labelText: 'Your Gmail',
            prefixIcon: Icon(FontAwesomeIcons.envelope),
          ),
          SizedBox(height: 20.h),
          CustomElevatedButton(
              text: 'Send Email',
              onPressed: () {
                GoRouter.of(context).push('/verification_code_view');
              }),
        ],
      ),
    );
  }
}
