import 'package:flutter/material.dart';
import 'package:login/LoginScreen.dart';
import 'package:login/home_screen.dart';

class TabMenu extends StatefulWidget {
  const TabMenu({super.key});

  @override
  State<TabMenu> createState() => _TabMenuState();
}

class _TabMenuState extends State<TabMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            bottom: const TabBar(
                tabs: [Text('Home'), Text('Contact'), Text('My Profile')]),
            title: const Text('6610339'),
          ),
          body: TabBarView(
              children: [HomeScreen(), Text('Contract'), LoginScreen()]),
        ));
  }
}
