import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
          fillColor: kSearchBarColor,
          filled: true,
          suffixIcon: Image.asset(
            AssetsData.search,
            scale: 0.9,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: kSearchBarColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: const BorderSide(
              color: kSearchBarColor,
            ),
          ),
          labelText: 'Search',
          labelStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: kWhiteColorWithOpacity2,
          ),
        ),
      ),
    );
  }
}
