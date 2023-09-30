import 'package:flutter/material.dart';

import '../Models/item_class.dart';
import '../components/item_ui.dart';

class ColorsPage extends StatelessWidget{
  const ColorsPage({super.key});

  final List<Item> colorsPageList = const [
    Item(
        image: 'assets/images/colors/color_black.png',
        jpName: 'Burakku',
        enName: 'Black',
        sound: 'black.wav'),
    Item(
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Chairo',
        enName: 'Brown',
        sound: 'brown.wav'),
    Item(
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Hokori ppoi kiiro',
        enName: 'Dusty Yellow',
        sound: 'dusty yellow.wav'),
    Item(
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Gure',
        enName: 'Gray',
        sound: 'gray.wav'),
    Item(
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midori',
        enName: 'Green',
        sound: 'green.wav'),
    Item(
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red',
        sound: 'red.wav'),
    Item(
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiroi',
        enName: 'White',
        sound: 'white.wav'),
    Item(
        image: 'assets/images/colors/yellow.png',
        jpName: 'kiiro ',
        enName: 'Yellow',
        sound: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        backgroundColor: const Color(0xff79359F),
      ),
      body: ListView.builder(
        itemCount: colorsPageList.length,
        itemBuilder: (BuildContext context, int index) {
          return NumberItem(
            number: colorsPageList[index],
            color:const Color(0xff79359F),
            itemType: 'colors',
          );
        },
      ),
    );
  }

}