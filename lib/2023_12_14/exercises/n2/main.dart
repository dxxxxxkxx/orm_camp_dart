import 'dart:convert';

import 'package:http/http.dart' as http;

import 'movie.dart';

Future<Movie> getMovie({required final int id}) async {
  final String path =
      'https://api.themoviedb.org/3/movie/$id?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1';
  final http.Response response = await http.get(Uri.parse(path));

  return Movie.fromJson(jsonDecode(response.body));
}

void main() async {
  final Movie movie = await getMovie(id: 1022796);
  print(movie.toJson());
}
