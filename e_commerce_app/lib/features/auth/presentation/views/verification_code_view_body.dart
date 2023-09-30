import 'package:e_commerce_app/core/utils/widgets/custom_elevated_button.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/features/auth/presentation/views/widgets/verification_code_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/styles.dart';

class VerificationCodeViewBody extends StatelessWidget {
  const VerificationCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(
            text: 'Verification Code',
            onTap: () => GoRouter.of(context).pop('/forget_password_view'),
          ),
          SizedBox(height: 15.h),
          Text(
              'Please enter the verification code that we’ve\n sent to your phone.',
              style: Styles.textStyle13),
          SizedBox(height: 15.h),
          const VerificationCodeWidget(),
          SizedBox(height: 20.h),
          CustomElevatedButton(
              text: 'Verify',
              onPressed: () {
                GoRouter.of(context).push('/create_new_password_view');
              }),
        ],
      ),
    );
  }
}
