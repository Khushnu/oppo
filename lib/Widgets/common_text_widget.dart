import 'package:flutter/material.dart';

class CommonTextWidget extends StatelessWidget {
  const CommonTextWidget({super.key, required this.name,
   this.textSize, this.fontFamily, this.textColor,
    this.fontWeight, this.textDecoration, this.textAlign});
final String name; 
final double? textSize;
final FontWeight? fontWeight;
final String? fontFamily;
final Color? textColor;
final TextAlign? textAlign;
final TextDecoration? textDecoration;
  @override
  Widget build(BuildContext context) {
    return  Text(name, 
    textAlign: textAlign,
    
    style: TextStyle(fontFamily: fontFamily ?? '', 
    fontSize: textSize ?? 28, 
    height: 1.3,
    decoration: textDecoration,
    color: textColor ?? Colors.black,
    fontWeight: fontWeight ?? FontWeight.normal),);
  }
}