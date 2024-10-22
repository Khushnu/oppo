// import 'package:flutter/material.dart';

// class OverlayWiget extends StatefulWidget {
//   const OverlayWiget({super.key});

//   @override
//   State<OverlayWiget> createState() => _OverlayWigetState();
// }

// class _OverlayWigetState extends State<OverlayWiget> {
//   final overLay = OverlayPortalController();
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//      body: ElevatedButton(
//         onPressed: overLay.toggle,
//         child: OverlayPortal(
//           controller: overLay,
//           overlayChildBuilder: (BuildContext context) {
//             return const Positioned(
//               right: 50,
//               bottom: 50,
//               child: ColoredBox(
//                 color: Colors.amberAccent,
//                 child: Text('tooltip'),
//               ),
//             );
//           },
//           child: const Text('Press to show/hide tooltip'),
//         ),
//       ),
//    );
//   }
// }