import 'package:flutter/material.dart';

class PersonlImage extends StatelessWidget {
  final Color backgroundColor;
  final Icon icon;
  final double raduis;
  const PersonlImage({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.raduis,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: raduis,
      child: icon,
    );
  }
}
