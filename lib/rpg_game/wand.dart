import 'validator.dart';

class Wand {
  String _name;
  double _power;

  Wand({required final String name, required final double power})
      : _name = name,
        _power = power {
    validateName(_name);
    validatePower(_power);
  }

  String get name => _name;

  set name(final String name) {
    validateName(name);
    _name = name;
  }

  double get power => _power;

  set power(final double power) {
    validatePower(power);
    _power = power;
  }
}
