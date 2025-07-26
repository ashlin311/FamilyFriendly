import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'moviedetails.dart';

class Results extends StatefulWidget {
  final String query;

  Results({required this.query});

  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  List<dynamic> _result = [];
  bool _isloading = false;
  String _errormessage = '';
  final String accesstoken =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZmVjMWE5MDNiMzM1Njc2ZjRhNTI1ZDAwZTEwMzE3YyIsIm5iZiI6MTc1MDg3NjAxMC4yNzQsInN1YiI6IjY4NWMzZjZhNTI5NWZjOGU5MWI4ZjdmMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NwVm3DB7HP7VmhaedNbcbwzWRgaR4J5-m6sxyqGcg2o";
  
  Future<void> searchquery(String query) async {
    if (query.isEmpty) return;

    setState(() {
      _isloading = true;
      _result = [];
      _errormessage = '';
    });
    try {
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
        setState(() {
          _isloading = false;
          _errormessage = 'Error: ${response.statusCode}';
        });
      }
    } catch (e) {
      setState(() {
        _isloading = false;
        _errormessage = 'Error: $e';
      });
    }
  }
  @override
  void initState() {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Results for ${widget.query}'),
        ),
        body: _isloading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : _errormessage.isNotEmpty
                ? Center(
                    child: Text(_errormessage),
                  )
                : _result.isEmpty
                    ? Center(
                        child: Text('Movie not found'),
                      )
                    : ListView.builder(
                        itemCount: _result.length,
                        itemBuilder: (context, index) {
                          final movie = _result[index];
                          return ListTile(
                            title: Text(movie['title'] ?? 'No Title'),
                            subtitle: Text(movie['overview'] ?? 'No Overview'),
                            leading: movie['poster_path'] != null
                                ? Image.network(
                                    'https://image.tmdb.org/t/p/w500${movie['poster_path']}',
                                    width: 50,
                                    height: 75,
                                    fit: BoxFit.cover)
                                : Icon(Icons.movie, size: 50),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        MovieDetails(movieId: movie['id'])),
                              );
                            },
                          );
                        },
                      ));
  }
}
