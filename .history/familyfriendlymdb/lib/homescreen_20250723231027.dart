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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 1000, // You can adjust this width as needed
              child: TextField(
                controller: movieinputcontroller,
                decoration: InputDecoration(
                  label: const Text('Search movie'),
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Colors.white)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.zero,
                    borderSide: BorderSide(color: Colors.orange,width: 2)
                  )
                ),
                style: TextStyle(color: Colors.white, fontSize: 20),
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
              style: ButtonStyle(
                backgroundColor: 
                padding: MaterialStateProperty.all<EdgeInsets>(
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10)
                ),
              ),
              child: Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
