import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Widget widget;
  const GradientContainer({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 80, 2, 38),
            Color.fromARGB(255, 84, 7, 98)
          ],
        ),
      ),
      child: Center(
        child: widget,
      ),
    );
  }

}
