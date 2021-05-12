import 'package:flutter/material.dart';
import 'package:fontend_project/HomePage.dart';
import 'package:fontend_project/Source/Login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primaryColor: Colors.white
      ),

      home: Login(),
    );
  }
}


