import 'package:e_commerce_app/constant.dart';
import 'package:flutter/material.dart';

import 'heading_view_body.dart';

class HeadingView extends StatelessWidget {
  const HeadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: HeadingViewBody(),
      ),
    );
  }
}
