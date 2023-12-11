import '../bionic.dart';
import '../healable.dart';
import '../healable_type.dart';
import 'terran.dart';

class Medic extends Terran implements Bionic, Healable {
  Medic({required super.name});

  @override
  void heal({required final HealableType healableType}) {}
}
