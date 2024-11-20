import 'package:flutter/material.dart';
import 'package:login/splashscreen.dart';
import 'LoginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: Splashscreen(),
    );
  }
}
