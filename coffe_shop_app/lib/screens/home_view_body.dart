import 'package:coffe_shop_app/widgets/drink_container_row.dart';
import 'package:coffe_shop_app/widgets/lato_text.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_search_bar.dart';
import '../widgets/drink_row.dart';
import '../widgets/limited_widget.dart';
import '../widgets/special_offer_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: const [
          CustomAppBar(),
          SizedBox(height: 8),
          LatoText(
            text: 'Good morning, Abdelrhman',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          SizedBox(height: 18),
          CustomSearchBar(),
          SizedBox(height: 23),
          LatoText(
            text: 'Categories',
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          SizedBox(height: 23),
          DrinksTextRow(),
          SizedBox(height: 10),
          DrinksRow(),
          SizedBox(height: 28),
          SpecialOffer(),
          SizedBox(height: 10),
          LimitedWidget(),
        ],
      ),
    );
  }
}
