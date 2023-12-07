import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
    required this.isbn,
  });

  @override
  set weight(double weight) {
    super.weight = weight;
  }
}
