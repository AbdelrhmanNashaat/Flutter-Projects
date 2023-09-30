import 'package:flutter/material.dart';

import '../assets.dart';
class BackGroundImage extends StatelessWidget {
  const BackGroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        AssetsData.image,
        fit: BoxFit.contain,
      ),
    );
  }
}