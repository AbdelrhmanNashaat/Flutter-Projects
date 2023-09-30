import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../constant.dart';
import 'custom_column.dart';

class CustomNavigationBar extends StatelessWidget {
  final Color? colorIcon1;
  final Color? colorIcon2;
  final Color? colorIcon3;
  final Color? colorText1;
  final Color? colorText2;
  final Color? colorText3;
  const CustomNavigationBar({
    super.key,
    this.colorIcon1,
    this.colorIcon2,
    this.colorIcon3,
    this.colorText1,
    this.colorText2,
    this.colorText3,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 80),
      height: 70,
      decoration: BoxDecoration(
        color: kCustomBar,
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomColumn(
                text: 'Home',
                icon: Icon(
                  FontAwesomeIcons.house,
                  color: colorIcon1,
                  size: 22,
                ),
                textColor: colorText1,
                onPressed: () => GoRouter.of(context).push('/homepage'),
              ),
              CustomColumn(
                text: 'Search',
                icon: Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 23,
                  color: colorIcon2,
                ),
                textColor: colorText2,
                onPressed: () => GoRouter.of(context).push('/searchpage'),
              ),
              CustomColumn(
                text: 'Saved items',
                icon: Icon(
                  FontAwesomeIcons.bookmark,
                  color: colorIcon3,
                  size: 23,
                ),
                textColor: colorText3,
                onPressed: () => GoRouter.of(context).push('/saveditempage'),
              ),
              const CustomColumn(
                text: 'Account',
                icon: Icon(
                  FontAwesomeIcons.user,
                  size: 23,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
