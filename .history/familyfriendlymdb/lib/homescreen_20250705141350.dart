import 'package:flutter/material.dart';
import 'dart:convert';
import "results.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  TextEditingController movieinputcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: movieinputcontroller,
          decoration: InputDecoration(label: const Text('Search movie')),
        ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            if (movieinputcontroller.text.isNotEmpty) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Resul,
                )
              );
            }
          },
          child: Text('Search'),
        ),
      ],
    );
  }
}
