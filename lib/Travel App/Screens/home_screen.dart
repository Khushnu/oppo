import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:oppo/Travel%20App/Model/hotelsmodel.dart';
import 'package:oppo/Travel%20App/Screens/details_page.dart';
import 'package:oppo/Travel%20App/Widgets/custom_text_widget.dart';
import 'package:oppo/Travel%20App/theme.dart';

class HomeScreenTravelApp extends StatefulWidget {
  const HomeScreenTravelApp({super.key});

  @override
  State<HomeScreenTravelApp> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreenTravelApp> {

  var categories = [
    {
      "icon":"assets/travel/hotel.png", 
      "label":"Hotel"
    },
    {
      "icon":"assets/travel/flight-mode.png", 
      "label":"Flight"
    },
    {
      "icon":"assets/travel/location.png", 
      "label":"Place"
    },

  ];

  var currentSelected;


  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: primaryBgColor,
     body: Column(
      children: [
        Container(
          height: screenHeight * 0.4 + 40,
          width: screenWidth,
          decoration: const BoxDecoration(
            // color: Colors.amber,
          ),
          child: Stack(
            children: [
              ShaderMask(
                blendMode: BlendMode.dstIn,
                shaderCallback: (bounds){
                return const RadialGradient(
              center: Alignment.centerRight, // Position the gradient at the top-right corner
              radius: 1.3, // Control the size of the curve
              colors: [
                primaryBgColor,
                Colors.transparent,
              ],
              stops: [0.1, 0.8], // Adjust where the fade happens
            ).createShader(
              bounds,
            );
                },
                child: Container(
                  height: screenHeight * 0.4 + 40,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                          image: DecorationImage(fit: BoxFit.cover, image: AssetImage("assets/travel/bgimg.jpg") )
              
                  ),
                )
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: const TextSpan(
                        text: "Let's\n", 
                        style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.w400),
                      children: [
                        TextSpan(
                          text: "Explore", 
                        style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
                      
                        )
                      ]
                      )
                      ),
                      ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(25)),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 30, sigmaY: 30),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.1),
                      border: Border.all(color: Colors.white.withOpacity(0.3)),
                      shape: BoxShape.circle
                          ),
                          child: Center(
                            child: Image.asset("assets/travel/search.png",
                             height: 30, color: Colors.white.withOpacity(0.6),),
                          ),
                ),
              ),
            ),
                    ],
                  ),
                ), 

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 50),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categories.map((e){
                          bool isSelected = currentSelected == e;
                          return GestureDetector(
                            onTap: (){
                              setState(() {
                                currentSelected = e;
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 60,
                                width: screenWidth * 0.2 + 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: isSelected ? primaryBgUiColor : const Color(0xff393939),
                                // boxShadow: [
                                //   isSelected ? BoxShadow(
                                //     color: primaryBgUiColor.withOpacity(0.3),  
                                //     blurRadius: 15, 
                                //     offset: const Offset(2, 3),
                                //     spreadRadius: 1
                                //   ) : const BoxShadow()
                                // ]
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(e['icon']!, height: 20, 
                                    color: isSelected ? Colors.black : Colors.white.withOpacity(0.7),
                                    ),
                                  const  SizedBox(
                                      width: 15,
                                    ), 
                                    TravelTextWidget(
                                      text: e['label']!,
      color: isSelected ? Colors.black : Colors.white.withOpacity(0.5)
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ), 
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 18),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  TravelTextWidget(text: 'Most Popular', fontSize: 28,
                                  color: Colors.white.withOpacity(0.8),
                                   fontWeight: FontWeight.bold,), 
                    
                                 const TravelTextWidget(text: 'See all',
                                  color: primaryBgUiColor,
                                  decorationColor:primaryBgUiColor,
                                   textDecoration: TextDecoration.underline,
                                  textDecorationStyle: TextDecorationStyle.solid,
                                   )
                                ],
                              ),
                            ),
                  )
            ],
          ),
        ), 
       const SizedBox(
          height: 10,
        ), 
       Padding(
         padding: const EdgeInsets.symmetric(horizontal: 8),
         child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
           child: Row(
            children: listHotel.map((e){
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> HotelDetailsScreen(hotelModel:  e,)));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: screenHeight * 0.4 + 20,
                    width: screenWidth * 0.6 + 20,
                    decoration: BoxDecoration(
                      color:const Color(0xff393939), 
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                          child: SizedBox(
                            height: screenHeight * 0.3 + 10,
                            width: screenWidth,
                            child: Image.asset(e.image, 
                            fit: BoxFit.cover,),
                          ),
                        ), 
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TravelTextWidget(text: e.title, color: Colors.white,),
                              const SizedBox(
                            height: 6,
                          ),
                              Row(
                                children: [
                                  Image.asset("assets/travel/location.png", 
                                  height: 15, 
                                  color: Colors.white.withOpacity(0.8),), 
                                 const SizedBox(
                                    width: 10,
                                  ),
                                  TravelTextWidget(text: e.location, 
                                  fontSize: 14, 
                                  color: Colors.white.withOpacity(0.6),)
                                ],
                              ), 
                              const SizedBox(
                            height: 6,
                          ),
                              Row(
                                children: [
                                  RichText(text: TextSpan(
                                    text: "\$${e.price.toStringAsFixed(0)}", 
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold, 
                                      fontSize: 17
                                    ), 
                                    children: const [
                                      TextSpan(
                                        text: "/night", 
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal, 
                                          fontSize: 16
                                        )
                                      )
                                    ]
                                  ), 
                                  ), 
                                 const Spacer(),
                                  const Icon(Icons.star, size: 18, color: Colors.orange,),
                                  TravelTextWidget(text: e.reviews,fontSize: 16, color: Colors.white.withOpacity(0.6),)
                                ],
                              )
                            ],
                          ),
                        ), 
                      ],
                    ),
                  ),
                ),
              );
           }).toList()
           ),
         ),
       )
      ],
     ),
    );
  }
}

