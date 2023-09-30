import 'package:flutter/material.dart';

import '../Models/phrases.dart';
import '../components/item_ui.dart';
class Phrases extends StatelessWidget{
  const Phrases({super.key});

  final List <Phrase> phrases  = const [
    Phrase(jpName: ' Kodoku suru koto o wasurenaide kudasai', enName: 'dont forget to subscribe', sound: 'dont_forget_to_subscribe.wav'),
      Phrase(jpName: 'Watashi wa puroguramingu daisukidesu', enName: 'i love programming', sound: 'i_love_programming.wav'),
  Phrase(jpName: 'Go kibun wa ikagadesu ka ?', enName: 'how are you feeling ?', sound: 'how_are_you_feeling.wav'),
  Phrase(jpName: 'Watashi wa anime ga daisukidesu', enName: 'i love anime', sound: 'i_love_anime.wav'),
  Phrase(jpName: 'Puroguramingu wa kantandesu', enName: 'programming is easy', sound: 'programming_is_easy.wav'),
  Phrase(jpName: 'Namae wa nandesu ka ?', enName: 'what is your name ?', sound: 'what_is_your_name.wav'),
  Phrase(jpName: 'Doko ni iku no', enName: 'where are you going ?', sound: 'where_are_you_going.wav'),
  Phrase(jpName: 'Hai, kimasu', enName: 'yes im coming', sound: 'yes_im_coming.wav'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phrases'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (BuildContext context, int index) {
          return PhrasesItem(
            phrase: phrases[index],
            color: const Color(0xff50ADC7),
            itemType: 'phrases',
          );
        },
      ),
    );
  }

}