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
    print(position);
    return position;
  }

  //*****************************************************

  void getLocation() {
    setState(()
        data="Getting ";
      var location = getCurrentLocation();
Position position=location;
      data = position.toString() + position.latitude.toString() + "," + position.longitude.toString();
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
