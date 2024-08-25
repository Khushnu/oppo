import 'package:flutter/material.dart';
import 'package:oppo/Widgets/common_text_widget.dart';

class DetailsContainerWidget extends StatelessWidget {
  const DetailsContainerWidget(
      {super.key,
      required this.containerHeight,
      required this.containerWidth,
      required this.color,
      this.containerType});
  final double containerHeight;
  final double containerWidth;
  final Color color;
  final ContainerType? containerType;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: containerHeight * 0.3 + 40,
        width: containerWidth / 2,
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        color: color,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(containerType == ContainerType.containerOne)
            Align( 
              alignment: containerType == ContainerType.containerOne ? 
               Alignment.topCenter : Alignment.bottomCenter,
              child: Column(
                children: [
                  if(containerType == ContainerType.containerTwo)
                  const Divider(color: Colors.black,),
                  Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       CommonTextWidget(name: containerType == ContainerType.containerOne ?
                        'Active Users' : 'Overall Sales', 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'isabelRegualer',
                       textSize: 16,), 
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset(containerType == ContainerType.containerOne ?
                         'assets/user.png' : 'assets/right-up.png'))
                    ],
                  ), 
                  const SizedBox(
                    height: 6,
                  ), 
                  if(containerType == ContainerType.containerOne)
                  const Divider(color: Colors.black,)
                ],
              ),
            ) else  
            const CommonTextWidget(name: '1.82M', fontFamily: 'marcellus', textSize: 54,),
            const Spacer(), 
            if(containerType == ContainerType.containerOne)
            Align(
              alignment: containerType == ContainerType.containerTwo ?
              Alignment.topCenter : Alignment.bottomLeft,
              child: CommonTextWidget(name:containerType == ContainerType.containerTwo ? '8.9M' : '50.2K',fontFamily: 'marcellus', 
              textSize: 54,)
            ) , 
             if(containerType == ContainerType.containerTwo)
                  Column(
                    children: [
                      const Divider(color: Colors.black,),
                       Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       const CommonTextWidget(name:'Overall Sales', 
                      fontWeight: FontWeight.bold,
                      fontFamily: 'isabelRegualer',
                       textSize: 16,), 
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.asset('assets/right-up.png'))
                    ],
                  ), 
                    ],
                  ),
                 
          ],
        ),
      ),
    );
  }
}

enum ContainerType {
  containerOne,
  containerTwo,
}
