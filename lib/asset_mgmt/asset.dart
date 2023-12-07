/*
  가: Asset
  나: IntangibleAsset
  다: Patent
 */

abstract class Asset {
  String name;
  int price;

  Asset({required this.name, required this.price});
}
