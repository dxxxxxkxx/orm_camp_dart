import 'package:intl/intl.dart';

class Result {
  final bool adult;
  final String? backdropPath;
  final List<int> genreIds;
  final int id;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final DateTime releaseDate;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  const Result({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Result.fromJson(Map<String, dynamic> json)
      : adult = json['adult'] as bool,
        backdropPath = json['backdrop_path'] as String?,
        genreIds = (json['genre_ids'] as List<dynamic>)
            .map((final dynamic e) => e as int)
            .toList(),
        id = json['id'] as int,
        originalLanguage = json['original_language'] as String,
        originalTitle = json['original_title'] as String,
        overview = json['overview'] as String,
        popularity = json['popularity'] as double,
        posterPath = json['poster_path'] as String,
        releaseDate = DateTime.parse(json['release_date'] as String),
        title = json['title'] as String,
        video = json['video'] as bool,
        voteAverage = json['vote_average'] as double,
        voteCount = json['vote_count'] as int;

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'genre_ids': genreIds,
        'id': id,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'release_date': DateFormat('yyyy-MM-dd').format(releaseDate),
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount
      };
}
