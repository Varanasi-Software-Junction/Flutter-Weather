import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
class WeatherStarter extends StatefulWidget {
  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {
  String data = "Location";
  //*********************************************88
  Future getCurrentLocation()  async {
    Position position;

      position =await  Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print("Async");
      print(position);
      //data = position.toString();


    return position.toString();
  }

  //*****************************************************

  void getLocation()  {
    setState(() async {
      //data="getting";
      var location = await getCurrentLocation();
      data=location.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        data,
        style: TextStyle(color: Colors.teal),
      ),
      FlatButton(
        child: Text(
          "Second",
          style: TextStyle(color: Colors.yellow),
        ),
        onPressed: ()async {
          print("Hello");
         await getLocation();
        },
      ),
    ]);
  }
}
