class ProductionCompany {
  final int id;
  final String logoPath;
  final String name;
  final String originCountry;

  const ProductionCompany({
    required this.id,
    required this.logoPath,
    required this.name,
    required this.originCountry,
  });

  ProductionCompany.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int,
        logoPath = json['logo_path'] as String,
        name = json['name'] as String,
        originCountry = json['origin_country'] as String;

  Map<String, dynamic> toJson() => {
        'id': id,
        'logo_path': logoPath,
        'name': name,
        'origin_country': originCountry
      };
}
