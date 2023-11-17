import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  //location name for the UI
  String location;
  String time = ""; //time in that location
  String flag; //url to an assest flag icon
  String url; //location url for api endpoint
  bool isDaytime = true; //true or false uf daytime or not

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    //simpulate a network request for a username
    // String username = await Future.delayed(Duration(seconds: 3), () {
    //   return "govind";
    // });

    // await Future.delayed(Duration(seconds: 2), () {
    //   print("$username is musician & egg collector");
    // });

    // print("where are you ...");
    try {
      Response response = await get(Uri.parse(
          'http://worldtimeapi.org/api/timezone/$url')); //Europe/London

      Map data = jsonDecode(response.body);
      // print(data);
      String datetime = data['utc_datetime'];
      String offset = data['utc_offset'];

      //create a data time object
      DateTime now = DateTime.parse(datetime);
      //add the offset if any .. offset.substring(1,3); int.parse(offset)
      now.add(Duration(hours: 1));
      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now); //set the time property
      // print(time);
    } catch (e) {
      print("caugth error : $e");
      time = 'Could not get the time data';
    }
  }
}


// WorldTime instance = WorldTime(location: 'Berlin', flag: germany.png, url: 'Europe/London')