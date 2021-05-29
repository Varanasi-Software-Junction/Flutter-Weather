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
  dynamic getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print("Async");
    print(position);
    data = position.toString();
    return position;
  }

  //*****************************************************

  void getLocation() {
    setState(() {
      data="getting";
      var location = getCurrentLocation();
      data="done";
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
