import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    print('build function is ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: ElevatedButton.icon(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
          icon: Icon(Icons.plus_one),
          label: Text("Counter is $counter")),
    );
  }
}
