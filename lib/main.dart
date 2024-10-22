
import 'package:flutter/material.dart';
// import 'package:oppo/Screens/home_screen.dart';
import 'package:oppo/Travel%20App/Screens/screen_with_bottom.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ScreenWithBottom(),
      debugShowCheckedModeBanner: false,
    );
  }
}