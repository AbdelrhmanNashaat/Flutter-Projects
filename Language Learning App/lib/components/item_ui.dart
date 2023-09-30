import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../Models/phrases.dart';
import '../Models/item_class.dart';

class NumberItem extends StatelessWidget {
  const NumberItem(
      {super.key,
      required this.number,
      required this.color,
      required this.itemType});
  final Item number;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(number.image),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(number.sound);
              },
              color: Colors.white,
              icon: const Icon(
                Icons.play_arrow,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {super.key,
      required this.phrase,
      required this.color,
      required this.itemType});
  final Phrase phrase;
  final Color color;
  final String itemType;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 90,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  phrase.jpName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/$itemType/');
                player.play(phrase.sound);
              },
              color: Colors.white,
              icon: const Icon(
                Icons.play_arrow,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
