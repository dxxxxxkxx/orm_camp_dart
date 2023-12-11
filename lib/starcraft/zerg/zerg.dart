import '../recoverable.dart';
import '../unit.dart';

abstract class Zerg extends Unit implements Recoverable {
  Zerg({required super.name});
}
