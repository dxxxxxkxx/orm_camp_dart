class Store {
  final String? addr;
  final int? code;
  final DateTime? createdAt;
  final double? lat;
  final double? lng;
  final String? name;
  final String? remainStat;
  final DateTime? stockAt;
  final String? type;

  const Store({
    this.addr,
    this.code,
    this.createdAt,
    this.lat,
    this.lng,
    this.name,
    this.remainStat,
    this.stockAt,
    this.type,
  });

  Store.fromJson(Map<String, dynamic> json)
      : addr = json['addr']?.toString(),
        code = int.tryParse(json['code']?.toString() ?? ''),
        createdAt = DateTime.tryParse(
            (json['created_at']?.toString() ?? '').replaceAll('/', '-')),
        lat = double.tryParse(json['lat']?.toString() ?? ''),
        lng = double.tryParse(json['lng']?.toString() ?? ''),
        name = json['name']?.toString(),
        remainStat = json['remain_stat']?.toString(),
        stockAt = DateTime.tryParse(
            (json['stock_at']?.toString() ?? '').replaceAll('/', '-')),
        type = json['type']?.toString();

  Map<String, dynamic> toJson() => {
        'addr': addr ?? '',
        'code': code ?? '',
        'created_at':
            '${createdAt ?? ''}'.replaceAll('-', '/').substring(0, 19),
        'lat': lat ?? '',
        'lng': lng ?? '',
        'name': name ?? '',
        'remain_stat': remainStat ?? '',
        'stock_at': '${stockAt ?? ''}'.replaceAll('-', '/').substring(0, 19),
        'type': type ?? ''
      };
}
