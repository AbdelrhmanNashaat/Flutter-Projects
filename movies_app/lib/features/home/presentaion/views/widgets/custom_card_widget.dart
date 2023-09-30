import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constant.dart';
import '../../../../../core/utils/assets.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push('/movieview'),
      child: Stack(
        children: [
          Image.asset(
            AssetsData.movie1,
            height: 700,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 9),
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: kGrayColor,
                  radius: 22,
                  child: Icon(
                    FontAwesomeIcons.bookmark,
                    size: 20,
                    color: kRedColor,
                  ),
                ),
                const SizedBox(
                  width: 130,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: kGrayColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 7),
                    child: Row(
                      children: [
                        const Icon(
                          FontAwesomeIcons.star,
                          size: 16,
                          color: kRedColor,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Text(
                          '9.5',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kRedColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
