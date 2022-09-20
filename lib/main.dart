import 'package:flutter/material.dart';
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
              headline6: TextStyle(
                  fontFamily: 'Avenir', fontSize: 14, color: Colors.white))),
      home: Splash(),
    );
  }
}
