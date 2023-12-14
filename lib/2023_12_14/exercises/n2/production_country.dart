class ProductionCountry {
  final String iso_3166_1;
  final String name;

  const ProductionCountry({
    required this.iso_3166_1,
    required this.name,
  });

  ProductionCountry.fromJson(Map<String, dynamic> json)
      : iso_3166_1 = json['iso_3166_1'] as String,
        name = json['name'] as String;

  Map<String, dynamic> toJson() => {'iso_3166_1': iso_3166_1, 'name': name};
}
