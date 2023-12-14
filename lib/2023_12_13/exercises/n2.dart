import 'dart:convert';

class MovieInfo {
  final String title;
  final String director;
  final int year;

  const MovieInfo({
    required this.title,
    required this.director,
    required this.year,
  });

  MovieInfo.fromJson(Map<String, dynamic> json)
      : title = json['title'] as String,
        director = json['director'] as String,
        year = json['year'] as int;

  Map<String, dynamic> toJson() =>
      {'title': title, 'director': director, 'year': year};
}

Future<String> getMovieInfo() async {
  await Future.delayed(const Duration(seconds: 2));
  final Map<String, dynamic> mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977
  };

  return jsonEncode(mockData);
}

void main() async {
  final MovieInfo movieInfo =
      MovieInfo.fromJson(jsonDecode(await getMovieInfo()));
  print(movieInfo.director);
}
