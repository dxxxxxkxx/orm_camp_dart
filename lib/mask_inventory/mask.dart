import 'store.dart';

class Mask {
  final int? count;
  final List<Store>? stores;

  const Mask({this.count, this.stores});

  Mask.fromJson(Map<String, dynamic> json)
      : count = json['count'] as int,
        stores = (json['stores'] != null)
            ? (json['stores'] as List<dynamic>)
                .map((final dynamic store) =>
                    Store.fromJson(store as Map<String, dynamic>))
                .toList()
            : null;

  Map<String, dynamic> toJson() => {
        'count': count,
        'stores': stores?.map((final Store store) => store.toJson()).toList()
      };
}
