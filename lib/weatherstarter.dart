import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:async/async.dart';
import 'package:http/http.dart' as http;
class WeatherStarter extends StatefulWidget {
  _WeatherStarter createState() {
    return _WeatherStarter();
  }
}

class _WeatherStarter extends State<WeatherStarter> {
  String data = "Location";
  Future getCurrentData() async {
    http.Response response;
String url="http://varanasikshetra.com/hello.txt";
Uri uri=Uri.parse(url);

    response = await http.get(uri);
    print("Async");
    print(response.body);
    //data = position.toString();

    return response.body;
  }
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


            var location = await getCurrentData();
          setState(()  {
            data = location.toString();
          });
        },
      ),
    ]);
  }
}
