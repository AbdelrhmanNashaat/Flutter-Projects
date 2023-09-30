import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/features/splash/presentation/views/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
