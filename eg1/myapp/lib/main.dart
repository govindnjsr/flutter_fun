import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String buttonName = 'Click';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //to remove the debug banner from the top of the app
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("App Title"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  buttonName = "clicked";
                });
              },
              child: Text(buttonName)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings))
          ],
        ),
      ),
    );
  }
}
