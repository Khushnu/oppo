import 'package:flutter/material.dart';
import 'package:oppo/Widgets/common_text_widget.dart';
import 'package:oppo/theme.dart';

 appBar(){
  return AppBar(
    automaticallyImplyLeading: false,
          backgroundColor: primaryColor,
          title: Row(
            children: [
              const CommonTextWidget(name: 'Oppo', fontFamily: 'kaplerMedium',),
              const SizedBox(
                width: 5,
              ),
              Image.asset('assets/approved.png', scale: 25.9,)
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SizedBox(
                height: 30,
                width: 30,
                child: Image.asset('assets/menu.png',)),
            )
          ],
        );
}