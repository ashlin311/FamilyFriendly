import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import "results.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: movieinputcontroller,
          decoration: InputDecoration(label: const Text('Search movie')),
        ),
        SizedBox(height: 20,),
        ElevatedButton(
          onPressed: () {
             searchquery(movieinputcontroller.text.trim());

          },
          child: Text('Search'),
        ),
      ],
    );
  }
}
