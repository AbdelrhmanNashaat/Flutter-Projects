import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/features/auth/presentation/views/login_view_body.dart';
import 'package:flutter/material.dart';

class LogInView extends StatelessWidget {
  const LogInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: LogInUpViewBody(),
      ),
    );
  }
}
