import 'package:tmdb_api/tmdb_api.dart';

final tmdbWithCustomLogs = TMDB( //TMDB instance
    ApiKeys('eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI5ZmVjMWE5MDNiMzM1Njc2ZjRhNTI1ZDAwZTEwMzE3YyIsIm5iZiI6MTc1MDg3NjAxMC4yNzQsInN1YiI6IjY4NWMzZjZhNTI5NWZjOGU5MWI4ZjdmMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.NwVm3DB7HP7VmhaedNbcbwzWRgaR4J5-m6sxyqGcg2o', 'apiReadAccessTokenv4'),//ApiKeys instance with your keys,
  );