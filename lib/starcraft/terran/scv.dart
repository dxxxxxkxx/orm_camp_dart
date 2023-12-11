import '../bionic.dart';
import '../mechanic.dart';
import '../repairable.dart';
import '../repairable_type.dart';
import 'terran.dart';

class Scv extends Terran implements Bionic, Mechanic, Repairable {
  Scv({required super.name});

  void gatherResource() {}

  @override
  void repair({required final RepairableType repairableType}) {}
}
