
import 'package:flutter/material.dart';
import 'package:oppo/Widgets/common_text_widget.dart';

class MenuTypeWidget extends StatelessWidget {
  const MenuTypeWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth, required this.title,
     required this.subtitle, required this.timeCheck, 
     required this.image, required this.color, this.ontap,
  });

  final double screenHeight;
  final double screenWidth;
  final String title;
  final String subtitle; 
  final String timeCheck;
  final String image;
  final Color color;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: screenHeight * 0.1 , 
        width: screenWidth * 0.9, 
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: screenHeight * 0.1 - 20,
              width: screenWidth * 0.2 - 20, 
             decoration: BoxDecoration(
              color: color , 
              borderRadius: BorderRadius.circular(20)
             ),
             child: Center(child: SizedBox(
              height: 30,
              width: 30,
              child: Image.asset(image,)),),
            ), 
            const SizedBox(
              width: 15,
            ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonTextWidget(name: title, fontFamily: 'hk', 
                textSize: 20, fontWeight: FontWeight.w600,), 
              const SizedBox(
                  height: 10,
                ),
                CommonTextWidget(name: subtitle,
                textSize: 16, fontWeight: FontWeight.w400,),
              ],
            ), 
            const Spacer(),
           CommonTextWidget(name: timeCheck, fontFamily: 'hk', 
                textSize: 12, textColor: Colors.grey, fontWeight: FontWeight.w600,), 
          ],
        ),
      ),
    );
  }
}