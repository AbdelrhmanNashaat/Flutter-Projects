import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomColumn extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color? textColor;
  final VoidCallback? onPressed;
  const CustomColumn({
    super.key,
    required this.text,
    required this.icon,
    this.textColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(
            height: 9,
          ),
          Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
