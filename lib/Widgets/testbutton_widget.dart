import 'package:flutter/material.dart';

class TestButtonWidget extends StatelessWidget {
  final String test;
  final VoidCallback onpressed;
    
    const TestButtonWidget({super.key, required this.test, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed, 
    style: ElevatedButton.styleFrom(
      fixedSize: const Size(100, 20)
    ),
    child: Text(test));
  }
}