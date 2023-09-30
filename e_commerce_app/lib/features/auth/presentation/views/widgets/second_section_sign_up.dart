import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import 'custom_row_of_navigate.dart';
import 'or_widget.dart';
import 'row_of_google_and_facebook.dart';

class SecondSectionSignUp extends StatelessWidget {
  const SecondSectionSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRowOfNavigate(
          onPressed: () {
            GoRouter.of(context).push('/log_in_view');
          },
          text2: 'Login',
          text1: ' Have an account ?',
        ),
        const OrWidget(),
        SizedBox(height: 15.h),
        const RowOfGoogleAndFacebook(),
      ],
    );
  }
}
