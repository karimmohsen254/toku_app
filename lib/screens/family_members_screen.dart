import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/item_widget.dart';

class FamilyMembersScreen extends StatelessWidget {
  const FamilyMembersScreen({super.key});

  final List<Number> numbersList = const [
    Number(
      image: 'assets/images/family_members/family_father.png',
      enName: 'Chichioya',
      jpName: 'Father',
      sound: 'sounds/family_members/father.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      sound: 'sounds/family_members/daughter.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojiisan',
      enName: 'Grand Father',
      sound: 'sounds/family_members/grand father.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      sound: 'sounds/family_members/mother.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grand Mother',
      sound: 'sounds/family_members/grand mother.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Niisan',
      enName: 'Older Brother',
      sound: 'sounds/family_members/older bother.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      sound: 'sounds/family_members/older sister.wav',
    ),

    Number(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/son.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/younger brohter.wav',
    ),
    Number(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Musuko',
      enName: 'Son',
      sound: 'sounds/family_members/younger sister.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff463126),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text("Family Members", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: numbersList.length,
        itemBuilder: (context, index) =>
            ItemWidget(number: numbersList[index], color: Color(0xff548634)),
      ),
    );
  }
}
