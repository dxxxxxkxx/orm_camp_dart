import 'dates.dart';
import 'result.dart';

class MovieDb {
  final Dates dates;
  final int page;
  final List<Result> results;
  final int totalPages;
  final int totalResults;

  const MovieDb({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  MovieDb.fromJson(Map<String, dynamic> json)
      : dates = Dates.fromJson(json['dates']),
        page = json['page'] as int,
        results = (json['results'] as List<dynamic>)
            .map((final dynamic result) =>
                Result.fromJson(result as Map<String, dynamic>))
            .toList(),
        totalPages = json['total_pages'] as int,
        totalResults = json['total_results'] as int;

  Map<String, dynamic> toJson() => {
        'dates': dates.toJson(),
        'page': page,
        'results':
            results.map((final Result result) => result.toJson()).toList(),
        'total_pages': totalPages,
        'total_results': totalResults
      };
}
