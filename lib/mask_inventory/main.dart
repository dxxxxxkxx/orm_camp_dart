import 'dart:convert';

import 'package:http/http.dart' as http;

import 'mask.dart';
import 'store.dart';

bool containsNotNull({required final Store store}) {
  if (store.addr != null &&
      store.code != null &&
      store.createdAt != null &&
      store.lat != null &&
      store.lng != null &&
      store.name != null &&
      store.remainStat != null &&
      store.stockAt != null &&
      store.type != null) {
    return true;
  }

  return false;
}

void main() async {
  final http.Response response =
      await http.get(Uri.parse('http://104.198.248.76:3000/mask'));
  final Mask mask = Mask.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
  final List<Store>? stores = (mask.stores
          ?.takeWhile((final Store store) => containsNotNull(store: store)))
      ?.toList();

  print(Mask(count: stores?.length, stores: stores).toJson());
}
