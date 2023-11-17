import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    //simpulate a network request for a username
    // String username = await Future.delayed(Duration(seconds: 3), () {
    //   return "govind";
    // });

    // await Future.delayed(Duration(seconds: 2), () {
    //   print("$username is musician & egg collector");
    // });

    // print("where are you ...");

    Response response = await get(
        Uri.parse('http://worldtimeapi.org/api/timezone/Europe/London'));
    Map data = jsonDecode(response.body);
    // print(data);
    String datetime = data['utc_datetime'];
    String offset = data['utc_offset'];

    //create a data time object
    DateTime now = DateTime.parse(datetime);
    //add the offset if any .. offset.substring(1,3); int.parse(offset)
    now.add(Duration(hours: 1));
    print(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("loading screen"),
    );
  }
}
