import 'package:flutter/material.dart';
import 'package:oppo/Widgets/common_text_widget.dart';

class CommonButtonWidget extends StatelessWidget {
  const CommonButtonWidget({super.key, this.height, 
  this.width, this.text, this.ontap});
final double? height; 
final double? width; 
final String? text;
final Function()? ontap;


  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: ontap,
      child: Container(
                  height: height, 
                  width: width,
                  decoration: const ShapeDecoration(color: Colors.black, 
                  shape: StadiumBorder()),
                  child:  Center(
                    child: CommonTextWidget(name: text!, 
                    fontFamily: 'isabelaBlack',
                    textSize: 20,
                    fontWeight: FontWeight.w700,
                    textColor: Colors.white,),
                  ),
                ),
    );
  }
}