import 'dart:math';

int? findMax({required final List<int> intList}) {
  return intList.isNotEmpty
      ? intList.reduce((final int prev, final int next) => max(prev, next))
      : null;
}
