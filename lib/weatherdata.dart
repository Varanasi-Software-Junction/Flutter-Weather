import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'weatherstarter.dart';
class WeatherData
{
  WeatherData()
  {

  }
String url="";
String data="";

  Future getCurrentData() async {
    http.Response response;

    Uri uri=Uri.parse(url);

    response = await http.get(uri);
    print(response.body);
    data=response.body;

    return response.body;
  }
}