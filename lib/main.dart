import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/buttomAppbar.dart';
void main() {
  runApp(MyApp());
}
  class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomAppbar(),
      );
  }
}




