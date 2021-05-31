import 'dart:io';
import 'package:async/async.dart';
void main()
{

  print("Start");
 f1();
 f2();
 f3();
  print("Stop");

}
void f1()
{
  print("F1");
}
void f2()
{
  Duration duration=Duration(seconds: 10);
  Future.delayed(duration,() {
    print("F2");
  });
}
void f3()
{
  print("F3");
}