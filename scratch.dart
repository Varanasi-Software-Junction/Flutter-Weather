import 'dart:io';
import 'package:async/async.dart';
void main()
{
callFunctions();

}
void callFunctions ()
async
{
  f1();
 String value=await f2() ;
 print("F2 $value");
  f3();
}
void f1()
{
  print("F1");
}
Future  f2()
async
{
  String result="";
  Duration duration=Duration(seconds: 10);
 await Future.delayed(duration,() {
    print("F2");
    result="F2";
  });
  return result;
}
void f3()
{
  print("F3");
}