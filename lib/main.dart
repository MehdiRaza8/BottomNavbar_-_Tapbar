import 'package:bottomnavigateandtapbar/Tapbar/tabbar.dart';
import 'package:bottomnavigateandtapbar/bottom_navigation_bar/bottom_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomBar(),
    );
  }
}
