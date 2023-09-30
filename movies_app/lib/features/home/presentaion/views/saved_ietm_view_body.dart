import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/assets.dart';

import '../../../../constant.dart';
import '../../../../core/utils/widgets/saved_item_widget.dart';
import '../../../../core/utils/widgets/text_poppins.dart';
import 'widgets/custom_navigatio_bar.dart';

class SavedItemsViewBody extends StatelessWidget {
  const SavedItemsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: kPrimaryColor,
      ),
      child: const Column(
        children: [
          SizedBox(height: 80),
          TextPoppins(
            text: 'Saved items',
            size: 18,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: 60),
          SavedItemWidget(
            movieDate: '2019',
            movieName: 'Spiderman',
            movieRate: '9.5',
            imagePath: AssetsData.movie7,
          ),
          SizedBox(height: 30),
          SavedItemWidget(
            movieDate: '2021',
            movieName: 'Spider-Man: No Way H',
            movieRate: '8.5',
            imagePath: AssetsData.movie8,
          ),
          SizedBox(
            height: 170,
          ),
          CustomNavigationBar(
            colorIcon3: kBlueColor,
            colorText3: kBlueColor,
          ),
        ],
      ),
    );
  }
}
