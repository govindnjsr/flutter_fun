import 'package:fitness/pages/choose_location.dart';
import 'package:fitness/pages/home.dart';
import 'package:fitness/pages/home2.dart';
import 'package:fitness/pages/loading.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("this is my title"),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Name",
//               style: TextStyle(color: Colors.grey[900]),
//             ),
//             Text(
//               "Govind Panchal",
//               style: TextStyle(fontFamily: 'Kdam', color: Colors.amber),
//             ),
//             SizedBox(height: 20),
//             Text(
//               "Current Level",
//               style: TextStyle(color: Colors.grey[900]),
//             ),
//             Text(
//               "25",
//               style: TextStyle(fontFamily: 'Kdam', color: Colors.amber),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Icon(Icons.mail),
//                 SizedBox(width: 10),
//                 Text("you can mail me here ")
//               ],
//             )
//           ],
//         ),
//       ),
      // Container(
      //   color: Colors.amber,
      //   padding: EdgeInsets.symmetric(vertical: 20),
      //   child: Text("hey how are you"),
      // ),
      //  Center(
      // child: ElevatedButton(
      //   onPressed: () {},
      //   child: Text("buttonnnnn"),
      // ),
      // child: TextButton(
      //   onPressed: () {},
      //   child: Text("Text Button"),
      // ),
      //     child: IconButton(
      //   onPressed: () {
      //     print("the icon button is pressed ");
      //   },
      //   icon: Icon(
      //     Icons.airport_shuttle,
      //     color: Colors.red,
      //   ),
      // ))

//       floatingActionButton: FloatingActionButton(
//         child: Text("Click"),
//         onPressed: () => {},
//         backgroundColor: Colors.red[600],
//       ),
//     );
//   }
// }
