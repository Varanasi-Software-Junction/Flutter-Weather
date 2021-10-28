import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'dart:convert';

class NetworkDownloader {
  static Future getNetworkData(String url) async {
    http.Response response;
    Uri uri = Uri.parse(url);
    response = await http.get(uri);
    dynamic data = jsonDecode(response.body);
    return data;
  }
}
