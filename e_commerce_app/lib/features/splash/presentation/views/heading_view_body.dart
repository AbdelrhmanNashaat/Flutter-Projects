import 'package:e_commerce_app/constant.dart';
import 'package:e_commerce_app/core/utils/assets.dart';
import 'package:e_commerce_app/features/splash/presentation/views/widget/custom_page_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/utils/app_routes.dart';
import 'widget/page_view_item.dart';

final controller = PageController(initialPage: 0);
int currentPage = 0;

class HeadingViewBody extends StatefulWidget {
  const HeadingViewBody({super.key});

  @override
  State<HeadingViewBody> createState() => _HeadingViewBodyState();
}

class _HeadingViewBodyState extends State<HeadingViewBody> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: controller,
      onPageChanged: pageViewChange,
      children: [
        PageViewItem(
          elevatedButtonOnPressed: () => animateToPage(),
          elevatedButtonText: 'Next',
          textButtonOnPressed: () {
            GoRouter.of(context).push(AppRouter.signUpView);
          },
          textButtonText: 'Skip',
          imagePath: AssetsData.pageViewImage1,
        ),
        PageViewItem(
          elevatedButtonOnPressed: () => animateToPage(),
          elevatedButtonText: 'Next',
          textButtonOnPressed: () {
            GoRouter.of(context).push(AppRouter.signUpView);
          },
          textButtonText: 'Skip',
          imagePath: AssetsData.pageViewImage2,
        ),
        CustomPageViewItem(
          imagePath: AssetsData.pageViewImage3,
          elevatedButtonText: 'Get Started',
          elevatedButtonOnPressed: () {
            GoRouter.of(context).push(AppRouter.signUpView);
          },
        ),
      ],
    );
  }

  void animateToPage() {
    controller.animateToPage(
      currentPage + 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void pageViewChange(index) {
    setState(() {
      currentPage = index;
    });
  }
}

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: WormEffect(
        dotWidth: 13.0.w,
        dotHeight: 13.0.h,
        activeDotColor: kStandardYellowColor,
        dotColor: kStandardGrayColor,
      ),
    );
  }
}
