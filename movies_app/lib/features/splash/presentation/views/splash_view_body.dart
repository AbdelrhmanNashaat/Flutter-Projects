import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies_app/constant.dart';
import 'package:movies_app/core/utils/assets.dart';
import 'widgets/animated_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late final Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animatedSliding();
    curvedAnimation();
    animationController.forward();
    navigateToHomeScreen();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: kPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ScaleTransition(
                scale: animation,
                child: Image.asset(
                  AssetsData.logo,
                  scale: 1.9,
                ),
              ),
            ),
            const SizedBox(height: 20),
            AnimatedText(slidingAnimation: slidingAnimation),
          ],
        ),
      ),
    );
  }

  CurvedAnimation curvedAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    return animation = CurvedAnimation(
      parent: animationController,
      curve: Curves.fastOutSlowIn,
    );
  }

  void animatedSliding() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  Future navigateToHomeScreen() {
    return Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/loginview');
    });
  }
}
