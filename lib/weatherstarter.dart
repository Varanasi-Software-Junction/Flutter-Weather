import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class WeatherStarter extends StatefulWidget {
  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {
  String data = "Location";
  //*********************************************88
  Future getCurrentLocation()  {
    Position data;
    setState(() async {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      print("Async");
      print(position);
      data = position.toString();
    });
    return data;
  }

  //*****************************************************

  void getLocation() async {
    setState(() {
      //data="getting";
      var location =await getCurrentLocation();
      //data="done";
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
        onPressed: () {
          print("Hello");
          getLocation();
        },
      ),
    ]);
  }
}
