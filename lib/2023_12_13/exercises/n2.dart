import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final Map<String, dynamic> mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977
  };

  return jsonEncode(mockData);
}

void main() async {
  final Map<String, dynamic> movieInfo = jsonDecode(await getMovieInfo());
  print(movieInfo['director']);
}
