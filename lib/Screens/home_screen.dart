import 'package:flutter/material.dart';
import 'package:oppo/Screens/account_screen.dart';
import 'package:oppo/Screens/details_screen.dart';
import 'package:oppo/Widgets/appbar_widget.dart';
import 'package:oppo/Widgets/card_widget.dart';
import 'package:oppo/Widgets/common_text_widget.dart';
import 'package:oppo/Widgets/commont_button_widget.dart';
import 'package:oppo/theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
        backgroundColor: primaryColor,
        appBar:appBar(), 
        body:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(),
          
             
          
              SizedBox(
                height: screenHeight * 0.1 + 20,
              ),
               const CommonTextWidget(name: 'My Earning', 
               fontFamily: 'isabelRegualer', fontWeight: FontWeight.w600,), 
               const CommonTextWidget(name: '\$45,700', fontFamily: 'hk',
               fontWeight: FontWeight.w700, textSize: 80,), 
               const SizedBox(
                height: 20,
               ),
               const CommonTextWidget(name: '28May - 04 June', fontFamily: 'isabelRegualer',
               textDecoration: TextDecoration.underline,
               fontWeight: FontWeight.w600, textSize: 20,), 
                 SizedBox(
                  height: screenHeight * 0.1 - 20,
                ),
                CommonButtonWidget(
                  ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const MyAccountScreen()));
                  },
                  height: 60, 
                width: screenWidth * 0.5,
                 text: 'My Account'),
                const SizedBox(
                  height: 20,
                ),
                 const CommonTextWidget(name: '*Data are based on selective range point',
                  fontFamily: 'isabelRegualer',
               fontWeight: FontWeight.w600, textSize: 18,), 
                const SizedBox(
                  height: 20,
                ),
              MenuTypeWidget(
                ontap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> const DetailsScreen()));
                },
                screenHeight: screenHeight, screenWidth: screenWidth, 
              subtitle: '^56.50% ~ \$25,520', timeCheck: '4 mins ago', title: 'Organic', 
              image: 'assets/flower.png', color: secondaryColor.withOpacity(0.9),), 
              
              const SizedBox(
                height: 15,
              ),
              MenuTypeWidget(screenHeight: screenHeight, screenWidth: screenWidth, 
              subtitle: '^43.50% ~ \$25,520', timeCheck: '2 mins ago', title: 'Social Ads', 
              image: 'assets/watering.png', color: secondaryColor2,), 
            ],
          ),
        ),
    );
  }
}
