import 'package:flutter/material.dart';
import 'package:oppo/Widgets/appbar_widget.dart';
import 'package:oppo/Widgets/common_text_widget.dart';
import 'package:oppo/Widgets/details_widget.dart';
import 'package:oppo/theme.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: appBar(),
      body: Column(
        children: [
          const CommonTextWidget(
            name: 'Track\nYour Earning \nLive Data.',
            textSize: 60,
            fontFamily: 'marcellus',
            fontWeight: FontWeight.w400,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/line.png',
                  scale: 2.4,
                ),
                const CommonTextWidget(
                  name: '24%^\nGrowth From \nYesterday',
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ), 
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              DetailsContainerWidget(containerHeight: screenHeight, 
              containerWidth: screenWidth, color: secondaryColor.withOpacity(0.8), 
              containerType: ContainerType.containerOne,),
              DetailsContainerWidget(containerHeight: screenHeight, 
              containerWidth: screenWidth, color: secondaryColor3, 
              containerType: ContainerType.containerTwo,),
            
            ],
          ), 
          Expanded(
            child: Container(
              // height: screenHeight * 0.1, 
              width: double.infinity,
              color: secondaryColor2,
              padding: const EdgeInsets.symmetric(horizontal: 15),
            child: const Row(
              children: [
                CommonTextWidget(name: '83──  ', textSize: 50, fontFamily: 'marcellus', ), 
                SizedBox(
                  width: 25,
                ),
                CommonTextWidget(name: '/', textSize: 20, fontFamily: 'marcellus', ),
                Spacer(), 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CommonTextWidget(name: 'Ads ──Live', fontFamily: 'isabelRegualer',
                    fontWeight: FontWeight.w600, textSize: 18,),
                    CommonTextWidget(name: '4.8k Plus Leads', fontFamily: 'isabelRegualer',
                    fontWeight: FontWeight.w600, textSize: 18,),
                    SizedBox(
                      height: 10,
                    ), 
                     CommonTextWidget(name: 'Sponsored<', fontFamily: 'isabelRegualer',
                    fontWeight: FontWeight.w600, textSize: 14,),
                  ],
                )
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}

