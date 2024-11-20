import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/LoginScreen.dart';
import 'package:login/tab_menu.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return TabMenu();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: const Text(
          "Mya Shwe Sin Hein 6610339",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
