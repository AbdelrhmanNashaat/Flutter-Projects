import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthText extends StatelessWidget {
  final String text;
  final double size;
  final FontWeight fontWeight;
  final Color? color;
  const AuthText({
    super.key,
    required this.text,
    required this.size,
    required this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.montserrat(
        color: color,
        fontWeight: fontWeight,
        fontSize: size,
      ),
    );
  }
}
