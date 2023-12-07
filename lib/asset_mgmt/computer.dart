import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  String maker;

  Computer({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required this.maker,
  });

  @override
  set weight(double weight) {
    super.weight = weight;
  }
}
