import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http'
import 'dart:convert';

class MovieDetails extends StatefulWidget {
  final int movieId;

  MovieDetails({required this.movieId});

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
