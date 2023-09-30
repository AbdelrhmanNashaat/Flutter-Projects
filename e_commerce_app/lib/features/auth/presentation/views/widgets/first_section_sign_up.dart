import 'package:e_commerce_app/features/auth/presentation/manager/sign_up_cunit/sign_up_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/utils/widgets/custom_elevated_button.dart';
import '../../../../../core/utils/widgets/custom_text_form_field.dart';

bool obscureText1 = true;
bool obscureText2 = true;
String? email;
String? password;
String? confirmPassword;
GlobalKey<FormState> formKey = GlobalKey();

class FirstSectionSignUp extends StatefulWidget {
  const FirstSectionSignUp({
    super.key,
  });

  @override
  State<FirstSectionSignUp> createState() => _FirstSectionSignUpState();
}

class _FirstSectionSignUpState extends State<FirstSectionSignUp> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubitCubit, SignUpCubitState>(
      listener: (context, state) {},
      builder: (context, state) {
        return SizedBox(
          width: double.infinity.sw,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Create Account',
                style: Styles.textStyle20,
              ),
              SizedBox(height: 12.h),
              Text(
                'become a new user',
                style: Styles.textStyle13,
              ),
              SizedBox(height: 8.h),
              const CustomTextFormFiled(
                hintText: 'Username',
                labelText: 'Username ',
                prefixIcon: Icon(FontAwesomeIcons.user),
              ),
              SizedBox(height: 8.h),
              CustomTextFormFiled(
                hintText: 'Gmail ',
                labelText: 'Gmail ',
                prefixIcon: const Icon(FontAwesomeIcons.envelope),
                onChanged: (data) {
                  email = data;
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormFiled(
                hintText: 'Password',
                labelText: 'Password ',
                prefixIcon: const Icon(FontAwesomeIcons.lock, size: 20),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText1
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText1 = !obscureText1;
                    });
                  },
                ),
                obscureText: obscureText1,
                onChanged: (data) {
                  if (data != password) {
                    return 'Password Doesn\'t Match';
                  }
                  password = data;
                },
              ),
              SizedBox(height: 8.h),
              CustomTextFormFiled(
                hintText: 'Confirm Password',
                labelText: 'Confirm Password',
                prefixIcon: const Icon(FontAwesomeIcons.lock, size: 20),
                suffixIcon: IconButton(
                  icon: Icon(
                    obscureText2
                        ? FontAwesomeIcons.eyeSlash
                        : FontAwesomeIcons.eye,
                    size: 18,
                  ),
                  onPressed: () {
                    setState(() {
                      obscureText2 = !obscureText2;
                    });
                  },
                ),
                obscureText: obscureText2,
                onChanged: (data) {
                  confirmPassword = data;
                },
              ),
              SizedBox(height: 12.h),
              CustomElevatedButton(text: 'Sign Up', onPressed: () {}),
            ],
          ),
        );
      },
    );
  }
}
