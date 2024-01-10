import 'package:intl/intl.dart';

import 'belongs_to_collection.dart';
import 'genre.dart';
import 'production_company.dart';
import 'production_country.dart';
import 'spoken_language.dart';

class Movie {
  final bool adult;
  final String backdropPath;
  final BelongsToCollection? belongsToCollection;
  final int budget;
  final List<Genre> genres;
  final String homepage;
  final int id;
  final String imdbId;
  final String originalLanguage;
  final String originalTitle;
  final String overview;
  final double popularity;
  final String posterPath;
  final List<ProductionCompany> productionCompanies;
  final List<ProductionCountry> productionCountries;
  final DateTime releaseDate;
  final int revenue;
  final int runtime;
  final List<SpokenLanguage> spokenLanguages;
  final String status;
  final String tagline;
  final String title;
  final bool video;
  final double voteAverage;
  final int voteCount;

  const Movie({
    required this.adult,
    required this.backdropPath,
    this.belongsToCollection,
    required this.budget,
    required this.genres,
    required this.homepage,
    required this.id,
    required this.imdbId,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.productionCompanies,
    required this.productionCountries,
    required this.releaseDate,
    required this.revenue,
    required this.runtime,
    required this.spokenLanguages,
    required this.status,
    required this.tagline,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  Movie.fromJson(Map<String, dynamic> json)
      : adult = json['adult'] as bool,
        backdropPath = json['backdrop_path'] as String,
        belongsToCollection = (json['belongsToCollection'] != null)
            ? BelongsToCollection.fromJson(json['belongsToCollection'])
            : null,
        budget = json['budget'] as int,
        genres = (json['genres'] as List<dynamic>)
            .map((final dynamic genre) => Genre.fromJson(genre))
            .toList(),
        homepage = json['homepage'] as String,
        id = json['id'] as int,
        imdbId = json['imdb_id'] as String,
        originalLanguage = json['original_language'] as String,
        originalTitle = json['original_title'] as String,
        overview = json['overview'] as String,
        popularity = json['popularity'] as double,
        posterPath = json['poster_path'] as String,
        productionCompanies = (json['production_companies'] as List<dynamic>)
            .map((final dynamic productionCompany) =>
                ProductionCompany.fromJson(productionCompany))
            .toList(),
        productionCountries = (json['production_countries'] as List<dynamic>)
            .map((final dynamic productionCountry) =>
                ProductionCountry.fromJson(productionCountry))
            .toList(),
        releaseDate = DateTime.parse(json['release_date'] as String),
        revenue = json['revenue'] as int,
        runtime = json['runtime'] as int,
        spokenLanguages = (json['spoken_languages'] as List<dynamic>)
            .map((final dynamic spokenLanguage) =>
                SpokenLanguage.fromJson(spokenLanguage))
            .toList(),
        status = json['status'] as String,
        tagline = json['tagline'] as String,
        title = json['title'] as String,
        video = json['video'] as bool,
        voteAverage = json['vote_average'] as double,
        voteCount = json['vote_count'] as int;

  Map<String, dynamic> toJson() => {
        'adult': adult,
        'backdrop_path': backdropPath,
        'belongs_to_collection': belongsToCollection?.toJson(),
        'budget': budget,
        'genres': genres.map((final Genre genre) => genre.toJson()).toList(),
        'homepage': homepage,
        'id': id,
        'imdb_id': imdbId,
        'original_language': originalLanguage,
        'original_title': originalTitle,
        'overview': overview,
        'popularity': popularity,
        'poster_path': posterPath,
        'production_companies': productionCompanies
            .map((final ProductionCompany productionCompany) =>
                productionCompany.toJson())
            .toList(),
        'production_countries': productionCountries
            .map((final ProductionCountry productionCountry) =>
                productionCountry.toJson())
            .toList(),
        'release_date': DateFormat('yyyy-MM-dd').format(releaseDate),
        'revenue': revenue,
        'runtime': runtime,
        'spoken_languages': spokenLanguages
            .map((final SpokenLanguage spokenLanguage) =>
                spokenLanguage.toJson())
            .toList(),
        'status': status,
        'tagline': tagline,
        'title': title,
        'video': video,
        'vote_average': voteAverage,
        'vote_count': voteCount
      };
}
