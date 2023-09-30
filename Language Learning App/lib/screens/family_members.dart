import 'package:flutter/material.dart';

import '../Models/item_class.dart';
import '../components/item_ui.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Item> familyMembersList = const [
    Item(
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father',
        sound: 'father.wav'),
    Item(
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Daughter',
        sound: 'daughter.wav'),
    Item(
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'Ojisan',
        enName: 'Grand Father',
        sound: 'grand father.wav'),
    Item(
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother',
        sound: 'mother.wav'),
    Item(
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grand Mother',
        sound: 'grand mother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older Brother',
        sound: 'older bother.wav'),
    Item(
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older Sister',
        sound: 'older sister.wav'),
    Item(
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son',
        sound: 'son.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'ototo',
        enName: 'Younger Brother',
        sound: 'younger brohter.wav'),
    Item(
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'Younger Sister',
        sound: 'younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        backgroundColor: const Color(0xff558B37),
      ),
      body: ListView.builder(
      itemCount: familyMembersList.length,
      itemBuilder: (BuildContext context, int index) {
        return NumberItem(
          number: familyMembersList[index],
          color:const Color(0xff558B37),
          itemType: 'family_members',
        );
      },
    ),
    );
  }
}
