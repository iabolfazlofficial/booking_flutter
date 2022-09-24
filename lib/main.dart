import 'package:flutter/material.dart';
import 'package:project/screens/detail.dart';
import 'package:project/screens/home.dart';
import 'package:project/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: TextTheme(
            headline1: TextStyle(
                fontFamily: 'Avenir', fontSize: 36, color: Colors.white),
            headline2: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 36,
                color: Color.fromARGB(255, 0, 0, 0)),
            headline6: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(164, 48, 255, 1)),
            headline4: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(0, 0, 0, 1)),
            headline5: TextStyle(
                fontFamily: 'Avenir',
                fontSize: 16,
                color: Color.fromRGBO(121, 121, 121, 1)),
          )),
      home: Detail(),
    );
  }
}
