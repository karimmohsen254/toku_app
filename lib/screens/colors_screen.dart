import 'package:flutter/material.dart';
import 'package:toku_app/models/number_model.dart';
import 'package:toku_app/widgets/item_widget.dart';

class ColorsScreen extends StatelessWidget {
  const ColorsScreen({super.key});

  final List<Number> colorsList = const [
    Number(
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
      sound: 'sounds/colors/red.wav',
    ),

    Number(
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Haiiro',
      enName: 'Gray',
      sound: 'sounds/colors/gray.wav',
    ),

    Number(
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
      sound: 'sounds/colors/yellow.wav',
    ),

    Number(
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
      sound: 'sounds/colors/green.wav',
    ),

    Number(
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
      sound: 'sounds/colors/black.wav',
    ),

    Number(
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
      sound: 'sounds/colors/white.wav',
    ),

    Number(
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
      sound: 'sounds/colors/brown.wav',
    ),
    Number(
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Kusunda Kiiro',
      enName: 'Dusty Yellow',
      sound: 'sounds/colors/dusty yellow.wav',
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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text("Colors", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: colorsList.length,
        itemBuilder: (context, index) => ItemWidget(
          number: colorsList[index],
          color: const Color(0xff7d40a2),
        ),
      ),
    );
  }
}
