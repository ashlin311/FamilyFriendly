import 'package:flutter/material.dart';
import 'homescreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Family Friendly Movie Database',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Family Friendly Movie Database'),
        ),
        body: HomeScreen(),
      ),
    );
  }
}