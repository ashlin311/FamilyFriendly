import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'results.dart';

class MovieDetails extends StatefulWidget {
  final int movieId;

  MovieDetails({required this.movieId});

  @override
  _MovieDetailsState createState() => _MovieDetailsState();
}

class _MovieDetailsState extends State<MovieDetails> {
  @override
  // TODO: implement widget
  MovieDetails get widget => super.widget;
}