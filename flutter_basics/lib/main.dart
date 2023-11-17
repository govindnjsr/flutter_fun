import 'package:flutter/material.dart';
import 'package:myapp/pages/Page1.dart';
import 'package:myapp/pages/choose_location.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/loading.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/home': (context) => Home(),
        '/location': (context) => ChooseLocation()
      },
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int ninjaLevel = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("this is my app bar"),
//           backgroundColor: Colors.red[400],
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               ninjaLevel++;
//             });
//           },
//           child: Icon(Icons.add),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text("Name"),
//                 Text(
//                   "Govind Panchal",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.amber[800]),
//                 ),
//                 Text("Ninja Score"),
//                 Text(
//                   "$ninjaLevel",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.amber[800]),
//                 ),
//               ],
//             ),
//           ),
//         ));
//   }
// }
