import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';

class TextFormFieldWidget extends StatelessWidget {
  final Icon? icon;
  final String label;
  const TextFormFieldWidget({
    super.key,
    this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: icon,
          contentPadding: const EdgeInsets.all(16.56),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: kBlackColorWithOpacity1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: const BorderSide(
              color: kBlackColorWithOpacity1,
            ),
          ),
          labelText: label,
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: kBlackColorWithOpacity2,
          ),
        ),
      ),
    );
  }
}