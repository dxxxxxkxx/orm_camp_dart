import '../recoverable.dart';
import '../unit.dart';

abstract class Protoss extends Unit implements Recoverable {
  int shield;

  Protoss({required this.shield, required super.name});
}
