
import 'package:flutter/material.dart';

class BottomProgressWidget extends StatelessWidget {
  const BottomProgressWidget({
    super.key, required this.width, required this.color,
  }); 
 final double width;
 final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40, 
      width: width, 
      decoration: ShapeDecoration(
        color:color, 
        shape: const StadiumBorder()
      ),
    );
  }
}