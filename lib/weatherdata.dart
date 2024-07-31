import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'package:vsjweather/networkdownloader.dart';

//import 'weatherstarter.dart';
class WeatherData {
  String apikey = "4a1f8a61b74546825af1e0be106e797b";
  String url = "";
  double temp = 0;

  WeatherData() {
    url =
        "https://api.openweathermap.org/data/2.5/forecast?q=Varanasi&appid=$apikey";

  }

  dynamic data = "";

  dynamic getWeather() async {
    data = await NetworkDownloader.getNetworkData(url);
    temp = double.parse(data["list"][0]["main"]["temp"].toString()) - 273;
    return 0;
  }
}
