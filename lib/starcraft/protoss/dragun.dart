import '../mechanic.dart';
import 'protoss.dart';

class Dragun extends Protoss implements Mechanic {
  Dragun({required super.shield, required super.name});

  @override
  void recover({required final int value}) {}
}
