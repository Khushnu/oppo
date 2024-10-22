import 'package:flutter/material.dart';
import 'package:oppo/Travel%20App/Model/hotelsmodel.dart';
import 'package:oppo/Travel%20App/Model/offermodel.dart';
import 'package:oppo/Travel%20App/Widgets/custom_text_widget.dart';
import 'package:oppo/Travel%20App/theme.dart';
import 'package:readmore/readmore.dart';

class HotelDetailsScreen extends StatefulWidget {
  final HotelModel hotelModel;
  const HotelDetailsScreen({super.key, required this.hotelModel});

  @override
  State<HotelDetailsScreen> createState() => _DtailsScreenState();
}

class _DtailsScreenState extends State<HotelDetailsScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Scaffold(
      backgroundColor: primaryBgColor,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.1 - 20),
            child: ShaderMask(
              blendMode: BlendMode.dstIn,
              shaderCallback: (v) {
                return const LinearGradient(
                    stops: [0, 0.9],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    colors: [Colors.transparent, Colors.black]).createShader(v);
              },
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(widget.hotelModel.image))),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.1 - 20),
            child: Container(
              height: screenHeight * 0.1 + 30,
              width: screenWidth,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      stops: [0, 0.8],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.transparent,
                        // Colors.amber
                        primaryBgColor
                      ])),
            ),
          ),

          //  ]
          // ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
            child: Align(
              alignment: Alignment.topLeft,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                  const Spacer(),
                  Image.asset(
                    "assets/travel/love.png",
                    height: 22,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.share,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),

        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 70,
              width: screenWidth,
              decoration: BoxDecoration(
                color: primaryBgUiColor, 
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Center(child: TravelTextWidget(text: "Book Now",fontSize: 18,)),
            ),
          ),
        ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: screenHeight * 0.5,
                width: screenWidth,
                // color: Colors.amber,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          TravelTextWidget(
                            text: widget.hotelModel.title,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/travel/location.png",
                                height: 20,
                                color: Colors.white.withOpacity(0.6),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TravelTextWidget(
                                text: widget.hotelModel.location,
                                color: Colors.white.withOpacity(0.6),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star_border_outlined,
                                color: primaryBgUiColor,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TravelTextWidget(
                                text: widget.hotelModel.reviews,
                                color: Colors.white.withOpacity(0.9),
                              ),
                              SizedBox(
                                width: screenWidth * 0.3 - 10,
                              ),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                        text:
                                            "\$${widget.hotelModel.price.toStringAsFixed(0)}/",
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 26),
                                        children: const [
                                          TextSpan(
                                              text: "night",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 18))
                                        ]),
                                  )
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: screenWidth,
                            child: Divider(
                              height: 10,
                              color: Colors.white.withOpacity(0.5),
                              endIndent: 3,
                              indent: 3,
                              thickness: 1,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ReadMoreText(
                            widget.hotelModel.description,
                            trimLength: 147,
                            trimCollapsedText: "Read More",
                            moreStyle: const TextStyle(
                                fontSize: 17,
                                color: primaryBgUiColor,
                                fontWeight: FontWeight.bold),
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
 const SizedBox(
                            height: 10,
                          ),
                          ExpansionTile(
                              tilePadding: EdgeInsets.zero,
                              expandedCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              shape: const OutlineInputBorder(
                                  borderSide: BorderSide.none),
                              trailing: Icon(
                                _isExpanded
                                    ? Icons.expand_less
                                    : Icons
                                        .expand_more, // Change icon based on state
                                color: Colors
                                    .white, // Set the color of the trailing icon
                              ),
                              onExpansionChanged: (bool expanded) {
                                setState(() {
                                  _isExpanded =
                                      expanded; // Update the state when expanded/collapsed
                                });
                              },
                              childrenPadding: EdgeInsets.zero,
                              expandedAlignment: Alignment.centerLeft,
                              title: const TravelTextWidget(
                                text: "What we offer",
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: offerList.map((e) {
                                      return Padding(
                                       padding: const EdgeInsets.symmetric(
                                            horizontal: 16).copyWith(left: 0),
                                        child: Container(
                                          height: screenHeight * 0.1,
                                          width: 90,
                                          
                                          decoration: BoxDecoration(
                                            color: const Color(0xff3B3B3B),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              // crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(
                                                  height: 26, 
                                                  width: 30,
                                                  child: Image.asset(e.image, fit: BoxFit.cover, color: Colors.white.withOpacity(0.8), )), 
                                                  const SizedBox(
                                                    height: 8,
                                                  ), 
                                                  TravelTextWidget(text: e.title, fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white.withOpacity(0.8),)
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ]), 
                              const SizedBox(
                                height: 15,
                              ),
                               SizedBox(
                            width: screenWidth,
                            child: Divider(
                              height: 10,
                              color: Colors.white.withOpacity(0.5),
                              endIndent: 3,
                              indent: 3,
                              thickness: 1,
                            ),
                          ),
                        ]))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
