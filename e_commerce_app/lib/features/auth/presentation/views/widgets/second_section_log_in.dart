import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../../core/utils/widgets/custom_text_button.dart';
import 'or_widget.dart';
import 'custom_row_of_navigate.dart';

class SecondSectionLogIn extends StatelessWidget {
  const SecondSectionLogIn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomTextButton(
          text: 'Forget Password?',
          onPressed: () {
            GoRouter.of(context).push('/forget_password_view');
          },
          textStyle: Styles.textStyle13,
        ),
        CustomElevatedButton(text: 'Login', onPressed: () {}),
        SizedBox(height: 10.h),
        CustomRowOfNavigate(
          onPressed: () {
            GoRouter.of(context).push('/sign_up_view');
          },
          text2: 'Sing up',
          text1: 'Don’t have an account ?',
        ),
        SizedBox(height: 10.h),
        const OrWidget(),
        SizedBox(height: 21.h),
      ],
    );
  }
}
