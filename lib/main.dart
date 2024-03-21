import 'package:flutter/material.dart';
// import 'package:flutter_calculator/screens/history.dart';
import 'package:flutter_calculator/screens/home.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromRGBO(156, 39, 176, 1),
          titleTextStyle: TextStyle(color: Colors.white)),
    ),
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      // '/history': (context) => History(),
    },
  ));
}
