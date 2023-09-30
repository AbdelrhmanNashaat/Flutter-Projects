import 'package:coffe_shop_app/assets.dart';
import 'package:flutter/material.dart';
import '../widgets/button_widget.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AssetsData.backGroundImage,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: ButtonWidget(),
          ),
        ),
      ],
    );
  }
}
