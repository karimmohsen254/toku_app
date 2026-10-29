import 'package:flutter/material.dart';
import 'package:toku_app/screens/home_screen.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}
