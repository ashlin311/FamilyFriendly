import 'package:flutter/material.dart';
import 'homescreen.dart';
import 'dart:convert';

class Results extends StatefulWidget {
  final String query;

  Results({required this.query});

  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  List<dynamic> _result = [];
  bool _isloading = false;
  final String accesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZmVjMWE5MDNiMzM1Njc2ZjRhNTI1ZDAwZTEwMzE3YyIsIm5iZiI6MTc1MDg3NjAxMC4yNzQsInN1YiI6IjY4NWMzZjZhNTI5NWZjOGU5MWI4ZjdmMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NwVm3DB7HP7VmhaedNbcbwzWRgaR4J5-m6sxyqGcg2o";

  Future<void> searchquery(String query) async {
    if (query.isEmpty) return;

    setState(() {
      _isloading = true;
      _result = [];
    });

    final url = Uri.parse(
        "https://api.themoviedb.org/3/search/movie?query=${Uri.encodeComponent(query)}");
    final response = await http.get(
      url,
      headers: {
        'Authorization': 'Bearer $accesstoken',
        'Content-Type': 'application/json;charset=utf-8',
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() {
        _result = data['results'].take(5).toList();
        _isloading = false;
      });
    } else {
      print("Error : ${response.statusCode}");
      setState(() {
        _isloading = false;
      });
    }
  }
}
