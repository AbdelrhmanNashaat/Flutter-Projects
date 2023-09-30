import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/assets.dart';
import 'package:movies_app/core/utils/widgets/text_poppins.dart';
import '../../../../constant.dart';
import 'widgets/custom_navigatio_bar.dart';
import 'widgets/search_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: kPrimaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 100),
            child: SearchBarWidget(),
          ),
          const SizedBox(height: 150),
          Image.asset(
            AssetsData.searchImage,
            scale: 4.5,
          ),
          const SizedBox(height: 15),
          const TextPoppins(
              text: 'We Can Help You To find Movie',
              size: 17,
              fontWeight: FontWeight.w600),
          const SizedBox(height: 10),
          const TextPoppins(
            text: 'Find your movie by Type title, categories, years, etc ',
            size: 12,
            fontWeight: FontWeight.w500,
            color: kSearchText,
          ),
          const SizedBox(
            height: 100,
          ),
          const CustomNavigationBar(
            colorIcon2: kBlueColor,
            colorText2: kBlueColor,
          ),
        ],
      ),
    );
  }
}
