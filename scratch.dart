import 'dart:io';
import 'package:async/async.dart';
import 'dart:convert';
import 'package:vsjweather/networkdownloader.dart';
import 'package:vsjweather/weatherdata.dart';
void main()
{
  f();

}
void f ()async
{
  WeatherData wd=WeatherData();
  await wd.getWeather();
  print(wd.data);
  print(wd.temp);
}
