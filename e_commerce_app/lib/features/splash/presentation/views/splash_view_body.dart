import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../constant.dart';
import '../../../../core/utils/app_routes.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  @override
  void initState() {
    curvedAnimation();
    _controller.forward();
    navigateToHome();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 214.w,
            height: 214.h,
            decoration: BoxDecoration(
              color: kGrayColor,
              borderRadius: BorderRadius.circular(107.0).r,
            ),
            child: FadeTransition(
              opacity: _animation,
              child: Image.asset(
                AssetsData.splashImage,
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          SizedBox(height: 15.h),
          Text('Online Shop', style: Styles.textStyle36),
        ],
      ),
    );
  }

  CurvedAnimation curvedAnimation() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    return _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        GoRouter.of(context).push(AppRouter.headingView);
      },
    );
  }
}
