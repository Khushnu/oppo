import 'package:flutter/material.dart';

class TravelTextWidget extends StatelessWidget {
  const TravelTextWidget({
    super.key,
    required this.text, this.fontSize, this.color,
     this.fontWeight, this.textDecoration, this.textDecorationStyle, this.decorationColor,
  });
  final String text;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextDecorationStyle? textDecorationStyle;
  final Color? decorationColor;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      decoration: textDecoration,
      decorationColor: decorationColor,
      decorationStyle: textDecorationStyle,
      fontSize: fontSize ?? 17, 
      fontWeight: fontWeight ?? FontWeight.w400,
      color: color
    ),);
  }
}