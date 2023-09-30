import 'package:coffe_shop_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: kGrayColor,
        selectedItemColor: kBrownColor,
        unselectedItemColor: kGray2Color,
        showUnselectedLabels: true,
        unselectedLabelStyle: const TextStyle(
            color: kGray2Color,
            fontSize: 13,
            fontWeight: FontWeight.w800,
            height: 1.5),
        selectedLabelStyle: const TextStyle(
            fontSize: 13, fontWeight: FontWeight.w800, height: 1.5),
        iconSize: 29,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favoruite',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.cartPlus),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
