import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Attraction {
  final int id;
  final String name;
  final String detail;
  final String coverimage;
  final double latitude;
  final double longitude;

  Attraction({
    required this.id,
    required this.name,
    required this.detail,
    required this.coverimage,
    required this.latitude,
    required this.longitude,
  });

  factory Attraction.fromJson(Map<String, dynamic> json) {
    return Attraction(
        id: json['id'],
        name: json['name'],
        detail: json['detail'],
        coverimage: json['coverimage'],
        latitude: json['latitude'],
        longitude: json['longitude']);
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Attraction> att = [];

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('assets/attractions.json');
    final data = await json.decode(response);
    setState(() {
      att = List<Attraction>.from(data.map((i) => Attraction.fromJson(i)));
    });
  }

  @override
  void initState() {
    super.initState();
    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: att.length,
        itemBuilder: (context, i) {
          return Card(
              child: Column(children: [
            Image.network(att[i].coverimage),
            Text(att[i].name),
            Text(att[i].detail)
          ]));
        },
      ),
    );
  }
}


