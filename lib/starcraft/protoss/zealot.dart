import '../bionic.dart';
import 'protoss.dart';

class Zealot extends Protoss implements Bionic {
  Zealot({required super.shield, required super.name});

  @override
  void recover({required final int value}) {}
}
