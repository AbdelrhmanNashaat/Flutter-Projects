import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/features/auth/presentation/views/widgets/auth_text.dart';
import 'widgets/auth_text_padding.dart';
import 'widgets/button_widget.dart';
import 'widgets/button_with_icon.dart';
import 'widgets/custom_image.dart';
import 'widgets/custom_row.dart';
import 'widgets/row_widget.dart';
import 'widgets/text_form_field_widget.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const AuthTextPadding(
                text1: 'Welcome!', text2: 'Please sign up to continue'),
            const SizedBox(height: 35),
            const Column(
              children: [
                TextFormFieldWidget(label: 'Enter email here'),
                SizedBox(height: 18),
                TextFormFieldWidget(
                  label: 'Enter password here',
                  icon: Icon(
                    Icons.visibility_off_outlined,
                    color: kIconsColor,
                    size: 18,
                  ),
                ),
                SizedBox(height: 18),
                TextFormFieldWidget(
                  label: 'Confirm password',
                  icon: Icon(
                    Icons.visibility_off_outlined,
                    color: kIconsColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: RowWidget(),
            ),
            const SizedBox(height: 18),
            const ButtonWidget(
              text: 'signup',
              backroundColor: kButton1Color,
              borderColor: kButton1Color,
            ),
            const SizedBox(height: 18),
            const AuthText(
              text: 'or',
              size: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColorWithOpacity1,
            ),
            const SizedBox(height: 8),
            const ButtonWithIcon(),
            const SizedBox(height: 3),
            CustomRow(
              text1: 'Already have an account ?',
              text2: 'Sign in',
              onPressed: () => GoRouter.of(context).push('/signupview'),
            ),
            const CustomImageWidget(),
          ],
        ),
      ],
    );
  }
}
