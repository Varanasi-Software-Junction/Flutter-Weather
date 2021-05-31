import 'dart:io';
import 'package:async/async.dart';
void main()
{
callFunctions();

}
void callFunctions()
{
  f1();
 String value= f2();
 print("F2 $value");
  f3();
}
void f1()
{
  print("F1");
}
String f2()
{
  String result;
  Duration duration=Duration(seconds: 10);
  Future.delayed(duration,() {
    print("F2");
    result:"F2";
  });
}
void f3()
{
  print("F3");
}