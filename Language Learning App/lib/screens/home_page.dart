import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/colors.dart';
import 'package:language_learning_app/screens/family_members.dart';
import 'package:language_learning_app/screens/phrases_page.dart';

import '../components/categoret_item.dart';
import 'numbers.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Toku'),
      ),
      body: Column(
        children: [
          CategoryItem(
            text: 'Numbers',
            color: const Color(0xffEF9235),
            onTab: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Numbers();
              }));
            },
          ),
          CategoryItem(
              text: 'Family Members',
              color: const Color(0xff558B37),
              onTab: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FamilyMembers();
                }));
              }),
          CategoryItem(
              text: 'Colors',
              color: const Color(0xff79359F),
              onTab: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ColorsPage();
                }));
              }),
          CategoryItem(
              text: 'Phrases',
              color: const Color(0xff50ADC7),
              onTab: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Phrases();
                }));
              }),
        ],
      ),
    );
  }
}
