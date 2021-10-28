import 'dart:ffi';

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
          primarySwatch: Colors.teal,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("VSJ Weather"),
            centerTitle: true,
          ),
          body: SizedBox.expand(
              child: Container(
            child: WeatherStarter(),
            color: Colors.tealAccent,
          )),
        ));
  }
}
