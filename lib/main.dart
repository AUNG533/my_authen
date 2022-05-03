
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _rpute = <String, WidgetBuilder>{
    '/login' : (context) => Login(),
    '/home' : (context) => Home(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CM Feed Json",
      home: Login(),
      routes: _rpute,
    );
  }
}
