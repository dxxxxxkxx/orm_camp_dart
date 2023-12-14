import 'dart:convert';

import 'package:http/http.dart' as http;

import 'movie_db.dart';

Future<MovieDb> getMovieDb() async {
  const String path =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';
  final http.Response response = await http.get(Uri.parse(path));

  return MovieDb.fromJson(jsonDecode(response.body));
}

void main() async {
  final MovieDb movieDb = await getMovieDb();
  print(movieDb.toJson());
}
