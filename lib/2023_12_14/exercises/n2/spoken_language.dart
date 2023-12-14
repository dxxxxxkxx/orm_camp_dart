class SpokenLanguage {
  final String englishName;
  final String iso_639_1;
  final String name;

  const SpokenLanguage({
    required this.englishName,
    required this.iso_639_1,
    required this.name,
  });

  SpokenLanguage.fromJson(Map<String, dynamic> json)
      : englishName = json['english_name'] as String,
        iso_639_1 = json['iso_639_1'] as String,
        name = json['name'] as String;

  Map<String, dynamic> toJson() =>
      {'english_name': englishName, 'iso_639_1': iso_639_1, 'name': name};
}
