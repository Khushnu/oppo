import 'package:flutter/material.dart';
import 'package:oppo/Widgets/appbar_widget.dart';
import 'package:oppo/Widgets/bottom_progress_widget.dart';
import 'package:oppo/Widgets/common_text_widget.dart';
import 'package:oppo/Widgets/image_widget.dart';
import 'package:oppo/theme.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: appBar(),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(),
              SizedBox(
                height: screenHeight * 0.1 - 50,
              ),
               const CommonTextWidget(name: '50% Super\n Cyber Monday Sale', 
               textSize: 30,
               textAlign: TextAlign.center,
               fontFamily: 'isabelRegualer', fontWeight: FontWeight.w600,), 
               const CommonTextWidget(name: '\$92,330', fontFamily: 'hk',
               fontWeight: FontWeight.w700, textSize: 80,), 
               const SizedBox(
                height: 10,
               ),
               const CommonTextWidget(name: '~', fontFamily: 'isabelRegualer',
              
               fontWeight: FontWeight.w600, textSize: 60,), 
                 const SizedBox(
                  height: 10,
                ),
               
                 const CommonTextWidget(name: 'In Total Global',
                  fontFamily: 'isabelRegualer',
               fontWeight: FontWeight.w500, textSize: 30,), 
                 SizedBox(
                 height: screenHeight * 0.1 - 20,
                ),
             const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonTextWidget(name: 'Data Analytics',fontWeight: FontWeight.w600,
                 fontFamily: 'isabelRegualer', ), 
                Spacer(),
                ImageWidget(image: 'assets/setting.png',),
                SizedBox(
                  width: 20,
                ), 
                ImageWidget(image: 'assets/right-up.png',), 
              ],
             ), 
               const SizedBox(
                  height: 10,
                ),
             Container(
              height: screenHeight * 0.3 - 20,
              width: screenWidth * 0.9,
              // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(20)
              ),
              child:   Padding(
                padding:const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CommonTextWidget(name: 'Average Order', 
                    fontWeight: FontWeight.w600,
                    textSize: 20,
                    textColor: Colors.grey,
                    fontFamily: 'isabelRegualer',),
                    const CommonTextWidget(name: '\$1,238.96 USD', 
                    fontWeight: FontWeight.w600,
                    textSize: 40,
                    fontFamily: 'hk',),
                    const CommonTextWidget(name: '+2.75^', 
                    fontWeight: FontWeight.w600,
                    textSize: 28,
                    textColor: Colors.grey,
                    fontFamily: 'hk',), 
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 18,
                              ),
                              CommonTextWidget(name: 'S', textSize: 12, textColor: Colors.grey,),
                              SizedBox(
                                width: 37,
                              ),
                              CommonTextWidget(name: 'M',textSize: 12,textColor: Colors.grey,),
                                SizedBox(
                                width: 30,
                              ),
                              CommonTextWidget(name: 'T', textSize: 12,textColor: Colors.grey,),
                            ],
                          ),
                
                          Row(
                            children: [
                              SizedBox(
                                width: 53,
                              ),
                              CommonTextWidget(name: 'Wed', fontWeight: FontWeight.bold, textSize: 12,),
                              SizedBox(
                                width: 41,
                              ),
                              CommonTextWidget(name: 'T', textSize: 12,textColor: Colors.grey,),
                              SizedBox(
                                width: 31,
                              ),
                              CommonTextWidget(name: 'F', textSize: 12,textColor: Colors.grey,),
                              SizedBox(
                                width: 30,
                              ),
                              CommonTextWidget(name: 'S',textSize: 12,textColor: Colors.grey,),
                            ],
                          ),
                        ],
                      ),
                    ), 
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        BottomProgressWidget(
                          width: 60, 
                          color: secondaryColor.withOpacity(0.9),
                        ),
                        const BottomProgressWidget(
                          width: 30, 
                          color: secondaryColor3,
                        ),
                        const BottomProgressWidget(
                          width: 60, 
                          color: secondaryColor2,
                        ),
                         BottomProgressWidget(
                          width: 70, 
                          color: secondaryColor.withOpacity(0.9),
                        ),
                         const BottomProgressWidget(
                          width: 45, 
                          color: secondaryColor3,
                        ),
                         const BottomProgressWidget(
                          width: 28, 
                          color: secondaryColor3,
                        ),
                         const BottomProgressWidget(
                          width: 51, 
                          color: secondaryColor2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
             ), 

              
             
            ],
          ),
      ),
    );
  }
}



