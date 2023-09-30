import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/features/auth/presentation/views/widgets/auth_text.dart';
import 'widgets/auth_text_padding.dart';
import 'widgets/button_widget.dart';
import 'widgets/button_with_icon.dart';
import 'widgets/custom_image.dart';
import 'widgets/custom_row.dart';
import 'widgets/custom_text_button.dart';
import 'widgets/row_widget.dart';
import 'widgets/text_form_field_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            const AuthTextPadding(
                text1: 'Welcome back', text2: 'Please sign in to continue'),
            const SizedBox(height: 35),
            const Column(
              children: [
                TextFormFieldWidget(label: 'Enter email here'),
                SizedBox(height: 25),
                TextFormFieldWidget(
                  label: 'Enter password here',
                  icon: Icon(
                    Icons.visibility_off_outlined,
                    color: kIconsColor,
                    size: 18,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const RowWidget(),
                  CustomTextButton(
                    text: 'Forget password?',
                    size: 12,
                    fontWeight: FontWeight.w400,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const ButtonWidget(
              text: 'Login',
              backroundColor: kButton1Color,
              borderColor: kButton1Color,
            ),
            const SizedBox(height: 20),
            const AuthText(
              text: 'or',
              size: 20,
              fontWeight: FontWeight.w600,
              color: kBlackColorWithOpacity1,
            ),
            const SizedBox(height: 15),
            const ButtonWithIcon(),
            const SizedBox(height: 5),
            CustomRow(
              text1: 'Don’t have an account ?',
              text2: 'Sign up',
              onPressed: () => GoRouter.of(context).push('/signupview'),
            ),
            const SizedBox(height: 42),
            const CustomImageWidget(),
          ],
        ),
      ],
    );
  }
}
