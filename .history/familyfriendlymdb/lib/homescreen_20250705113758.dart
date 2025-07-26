import 'package:flutter/material.dart';
import 'package:http/http.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final TextEditingController movieinputcontroller = TextEditingController();
  List<dynamic> _result = [];
  bool _isloading = false;
  final String accesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZmVjMWE5MDNiMzM1Njc2ZjRhNTI1ZDAwZTEwMzE3YyIsIm5iZiI6MTc1MDg3NjAxMC4yNzQsInN1YiI6IjY4NWMzZjZhNTI5NWZjOGU5MWI4ZjdmMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NwVm3DB7HP7VmhaedNbcbwzWRgaR4J5-m6sxyqGcg2o";

  Future<void> searchquery(String query) async {
    if (query.isEmpty) return;

    set
  }

  @override
  Widget build(BuildContext context) {
    return Center();
  }
}
