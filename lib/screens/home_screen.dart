import 'package:flutter/material.dart';
import 'package:toku_app/screens/colors_screen.dart';
import 'package:toku_app/screens/family_members_screen.dart';
import 'package:toku_app/screens/numbers_screen.dart';
import 'package:toku_app/screens/phrases_screen.dart';
import 'package:toku_app/widgets/container_widget.dart';

class HomeScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffff4d9),
      appBar: AppBar(
        backgroundColor: Color(0xff49332a),
        title: Text("Toku App", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ContainerWidget(
            colorr: Color(0xfff99531),
            text: "numbers",
            screenName: NumbersScreen(),
          ),
          ContainerWidget(
            colorr: Color(0xff528032),
            text: "Family Members",
            screenName: FamilyMembersScreen(),
          ),
          ContainerWidget(
            colorr: Color(0xff7d40a2),
            text: "colors",
            screenName: ColorsScreen(),
          ),
          ContainerWidget(
            colorr: Color(0xff47a5cb),
            text: "phrases",
            screenName: PhrasesScreen(),
          ),
        ],
      ),
    );
  }
}
