import 'dart:io';
import 'package:async/async.dart';
import 'dart:convert';
void main()
{
  String s='{"name":"Champak","age":"51","books":[{"name":"Recursion Sutras"},{"name":"OOPS"}]}';

  var x=jsonDecode (s);
  print(x);
print(x['name']);
print(x['age']);
  print(x['books']);
  print(x['books'][0]);
  print(x['books'][0]['name']);

}
