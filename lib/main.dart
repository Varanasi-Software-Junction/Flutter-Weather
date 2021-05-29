import 'package:flutter/material.dart';
import 'package:vsjweather/weatherstarter.dart';

void main() {
  runApp(VSJApp());
}

class VSJApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VSJ Weather',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WeatherStarter(),
    );
  }
}
