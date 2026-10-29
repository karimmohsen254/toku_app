import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase_model.dart';

class PhraseItemWidget extends StatelessWidget {
  const PhraseItemWidget({super.key, required this.phrase});

  final Phrase phrase;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final player = AudioPlayer();
        player.play(AssetSource(phrase.sound));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.white24, width: 1)),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    phrase.jpText,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    phrase.enText,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(phrase.sound));
              },
              icon: Icon(Icons.play_arrow, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
