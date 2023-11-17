// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Breakfast",
//           style: TextStyle(
//               color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         backgroundColor: Colors.white, //change the backgroundColor

//         elevation: 0.0, //remove the shadow
//         centerTitle: true,
//         //navbar right button
//         actions: [
//           Container(
//             margin: EdgeInsets.all(10),
//             alignment: Alignment.center,
//             width: 40,
//             child: SvgPicture.asset(
//               'assets/dots.svg',
//               height: 20,
//               width: 20,
//             ),
//             decoration: BoxDecoration(
//                 color: Colors.amber, borderRadius: BorderRadius.circular(10)),
//           ),
//         ],
//         //navbar left button
//         leading: Container(
//           margin: EdgeInsets.all(10),
//           alignment: Alignment.center,
//           child: SvgPicture.asset(
//             'assets/dots.svg',
//             height: 20,
//             width: 20,
//           ),
//           decoration: BoxDecoration(
//               color: Colors.amber, borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//     );
//   }
// }
