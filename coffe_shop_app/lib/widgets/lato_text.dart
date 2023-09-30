import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LatoText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  const LatoText({
    super.key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.lato(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
