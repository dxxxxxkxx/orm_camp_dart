class Genre {
  final int id;
  final String name;

  const Genre({required this.id, required this.name});

  Genre.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        name = json['name'] as String;

  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}
