import 'store.dart';

class Mask {
  final int? count;
  final List<Store>? stores;

  const Mask({this.count, this.stores});

  Mask.fromJson(Map<String, dynamic> json)
      : count = int.tryParse(json['count']?.toString() ?? ''),
        stores = (json['stores'] != null)
            ? (json['stores'] as List<dynamic>)
                .map((final dynamic store) => Store.fromJson(store))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'count': count ?? '',
        'stores': stores?.map((final Store store) => store.toJson()).toList()
      };
}
