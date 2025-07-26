import 'package:flutter/material.dart';
import "results.dart";

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  TextEditingController movieinputcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 1000, // You can adjust this width as needed
            child: TextField(
              controller: movieinputcontroller,
              decoration: InputDecoration(label: const Text('Search movie')),
            ),
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
                    builder: (context) => Results(query: movieinputcontroller.text.trim()),
                  )
                );
              }
            },
            child: Text('Search'),
          ),
        ],
      ),
    );
  }
}
