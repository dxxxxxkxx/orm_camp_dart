import 'asset.dart';
import 'thing.dart';

abstract class TangibleAsset extends Asset implements Thing {
  @override
  double weight;
  String color;

  TangibleAsset({
    required super.name,
    required super.price,
    required this.weight,
    required this.color,
  });
}
