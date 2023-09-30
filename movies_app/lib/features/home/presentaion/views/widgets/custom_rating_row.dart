import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRatingRow extends StatelessWidget {
  final String movieRate;
  final Icon icon;
  final Color color;
  final double textSize;
  const CustomRatingRow({
    super.key,
    required this.movieRate,
    required this.icon,
    required this.color,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        const SizedBox(
          width: 8,
        ),
        Text(
          movieRate,
          style: GoogleFonts.montserrat(
              fontSize: textSize, fontWeight: FontWeight.w400, color: color),
        ),
      ],
    );
  }
}
