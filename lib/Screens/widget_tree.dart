// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:oppo/Widgets/testbutton_widget.dart';

class TestExampleWidgetTree extends StatefulWidget {
  const TestExampleWidgetTree({super.key});

  @override
  State<TestExampleWidgetTree> createState() => _TestExampleWidgetTreeState();
}

class _TestExampleWidgetTreeState extends State<TestExampleWidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         TestButtonWidget(onpressed: (){

         }, 
         test: '',
         ),
          TestButtonWidget(
           onpressed: (){
            print('test passed');
           }, 
           test: "Click Me",)
        ],
      ),
    );
  }
}