import 'package:flutter/material.dart';
import 'package:toku_app/models/phrase_model.dart';
import 'package:toku_app/widgets/phrase_item_widget.dart';

class PhrasesScreen extends StatelessWidget {
  const PhrasesScreen({super.key});

  final List<Phrase> phrasesList = const [
    Phrase(
      jpText: 'Kōdoku suru koto o wasurenaide kudasai',
      enText: "Don't forget to subscribe",
      sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
    ),
    Phrase(
      jpText: 'Watashi wa puroguramingu ga daisukidesu',
      enText: 'I love programming',
      sound: 'sounds/phrases/i_love_programming.wav',
    ),
    Phrase(
      jpText: 'Puroguramingu wa kantandesu',
      enText: 'Programming is easy',
      sound: 'sounds/phrases/programming_is_easy.wav',
    ),
    Phrase(
      jpText: 'Doko ni iku no',
      enText: 'Where are you going',
      sound: 'sounds/phrases/where_are_you_going.wav',
    ),
    Phrase(
      jpText: 'Namae wa nandesu ka',
      enText: 'What is your name?',
      sound: 'sounds/phrases/what_is_your_name.wav',
    ),
    Phrase(
      jpText: 'Watashi wa anime ga daisukidesu',
      enText: 'I love anime',
      sound: 'sounds/phrases/i_love_anime.wav',
    ),
    Phrase(
      jpText: 'Go kibun wa ikagadesu ka',
      enText: 'How are you feeling?',
      sound: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    Phrase(
      jpText: 'Kimasu ka',
      enText: 'Are you coming?',
      sound: 'sounds/phrases/are_you_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff47a5cb),
      appBar: AppBar(
        backgroundColor: const Color(0xff463126),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("Phrases", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: phrasesList.length,
        itemBuilder: (context, index) =>
            PhraseItemWidget(phrase: phrasesList[index]),
      ),
    );
  }
}
