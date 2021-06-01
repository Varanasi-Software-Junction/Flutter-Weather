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
  Future getCurrentLocation() async {
    Position position;

    position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
    print("Async");
    print(position);
    //data = position.toString();

    return position.toString();
  }
@override
  void initState()

  {
    super.initState();
    ()async
    {
      var location = await getLocation();
      setState(() {
        data = location.toString();
      });
    }();


}

  //*****************************************************

  Future getLocation() async {
    //data="getting";
    var location = await getCurrentLocation();

    return location;
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
          "Press This",
          style: TextStyle(color: Colors.yellow),
        ),
        onPressed: () async{
          print("Hello");


            var location = await getLocation();
          setState(()  {
            data = location.toString();
          });
        },
      ),
    ]);
  }
}
