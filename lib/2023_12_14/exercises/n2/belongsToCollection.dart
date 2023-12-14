class BelongsToCollection {
  final int id;
  final String name;
  final String posterPath;
  final String backdropPath;

  const BelongsToCollection({
    required this.id,
    required this.name,
    required this.posterPath,
    required this.backdropPath,
  });

  BelongsToCollection.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String,
        posterPath = json['poster_path'] as String,
        backdropPath = json['backdrop_path'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'poster_path': posterPath,
        'backdrop_path': backdropPath
      };
}
