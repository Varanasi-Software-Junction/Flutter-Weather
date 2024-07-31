import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
import 'weatherdata.dart';

class WeatherStarter extends StatefulWidget {
  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {
  _WeatherStarter() {
    url =
        "https://api.openweathermap.org/data/2.5/forecast?q=Varanasi&appid=$apikey";
  }

  String apikey = "4a1f8a61b74546825af1e0be106e797b";
  String data = "Location";
  WeatherData weather = WeatherData();
  String url = "";

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
  void initState() {
    super.initState();
    () async {
      var location = await getLocation();
      setState(
        () {
          data = location.toString();
        },
      );
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: new SingleChildScrollView(
            child: Text(
              data,
              style: TextStyle(
                  color: Colors.teal,
                  backgroundColor: Colors.amber,
                  fontSize: 24),
            ),
            scrollDirection: Axis.vertical,
          ),
        ),
        ElevatedButton(
          child: Text(
            "Get Weather",
            style: TextStyle(
              color: Colors.yellow,
            ),
          ),
          onPressed: () async {
            print("Hello");

            // var location = await getCurrentData();
            weather.url = url;
            await weather.getWeather();
            setState(
              () {
                data = weather.data.toString();
              },
            );
          },
        ),
      ],
    );
  }
}
