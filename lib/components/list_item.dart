import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.item,
      required this.color,
      required this.colorOfContainer,
      required this.itemType});
  final ItemModel item;
  final Color color;
  final Color colorOfContainer;
  final String itemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(color: colorOfContainer, child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.jpName,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 49, 4, 4),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  item.enName,
                  style: const TextStyle(
                      color: Color.fromARGB(255, 49, 4, 4),
                      fontSize: 24,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            icon: const Icon(Icons.play_arrow_rounded, size: 30),
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(item.sound));
            },
          ),
        ],
      ),
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem(
      {super.key,
      required this.color,
      required this.phrase,
      required this.itemType});
  final String itemType;
  final Color color;
  final ItemModel phrase;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
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
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  phrase.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
         
          IconButton(
            onPressed: () {
              final player = AudioPlayer();
              player.play(AssetSource(phrase.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 28,
            ),
          )
        ],
      ),
    );
  }
}
