import 'package:flutter/material.dart';
import 'package:oppo/Travel%20App/Screens/calendar_screen.dart';
import 'package:oppo/Travel%20App/Screens/chat_screen.dart';
import 'package:oppo/Travel%20App/Screens/favorite_screen.dart';
import 'package:oppo/Travel%20App/Screens/home_screen.dart';
import 'package:oppo/Travel%20App/Screens/profile_screen.dart';
import 'package:oppo/Travel%20App/theme.dart';

class ScreenWithBottom extends StatefulWidget {
  const ScreenWithBottom({super.key});

  @override
  State<ScreenWithBottom> createState() => _ScreenWithBottomState();
}

class _ScreenWithBottomState extends State<ScreenWithBottom> {

  int index = 0;

  final listOfPages = [
      const HomeScreenTravelApp(), 
      const FavoriteScreen(), 
      const CalendarScreen(),
      const ChatScreen(), 
      const ProfileScreen()
  ];

  final listOfitems = [
    {
      "icon":"assets/travel/home.png", 
      "label":"",
    },
    {
      "icon":"assets/travel/love.png", 
       "label":"",
    },
    {
      "icon":"assets/travel/calendar.png", 
     "label":"",
    },
    {
      "icon":"assets/travel/message.png", 
       "label":"",
    },
    {
      "icon":"assets/travel/user.png", 
       "label":"",
    },
  ];


  @override
  Widget build(BuildContext context) {
    // double screenHeight = MediaQuery.sizeOf(context).height;
    // double screenwidth = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: primaryBgColor,
      body: listOfPages.elementAt(index),
      bottomNavigationBar:Container(
        // padding: EdgeInsets.all(0),
        decoration:  BoxDecoration(
          border: Border(top: BorderSide(color: Colors.grey.withOpacity(0.3)))
        ),
        child: BottomNavigationBar(
                  backgroundColor: primaryBgColor,
                  
                  currentIndex:index,
                  onTap: (v){
        setState(() {
          index = v;
                    });
                  },
                  type: BottomNavigationBarType.fixed,
                  items: listOfitems.map((e){
          bool isSelected = listOfitems[index] == e;
          return BottomNavigationBarItem(
            label: e['label'],
            icon: Transform.translate(
              offset: const Offset(0, -8),
              child: Container(
                height: 50,
                width: 30,
                decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: isSelected ? primaryBgUiColor : Colors.transparent))
                ),
                child: Column(
                  children: [
                    Container(
                      height: 4,
                      width: 15,
                       color: isSelected ? primaryBgUiColor : Colors.transparent,
                    ),
                   const SizedBox(
                      height: 15,
                    ),
                    Image.asset(e['icon']!, 
                    height: 26,
                     fit: BoxFit.cover, 
                    color: isSelected ? primaryBgUiColor : Colors.grey.withOpacity(0.4),
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList()  ,)
      )
    );
  }
}