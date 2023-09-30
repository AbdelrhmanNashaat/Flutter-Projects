import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          side: const MaterialStatePropertyAll(
            BorderSide(
              color: kButton1Color,
              width: 1.5,
            ),
          ),
          backgroundColor: const MaterialStatePropertyAll(kButton2Color),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          minimumSize: const MaterialStatePropertyAll(
            Size(316, 45),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 22,
                width: 25,
                child: Image.asset(AssetsData.googleLogo),
              ),
              const SizedBox(width: 6),
              Text(
                'Continue with Google',
                style: GoogleFonts.inter(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: kBlackColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
