import 'groupable.dart';
import 'groupable_type.dart';

abstract class Group implements Groupable {
  List<GroupableType?>? groups;

  Group.name() {
    groups = List.generate(12, (final int index) => null);
  }
}
