class Wand {
  String _name;
  double _power;

  Wand({required final String name, required final double power})
      : _name = name,
        _power = power {
    _validateName(_name);
    _validatePower(_power);
  }

  // getter & setter ------------

  String get name => _name;

  set name(final String name) {
    _validateName(name);
    _name = name;
  }

  double get power => _power;

  set power(final double power) {
    _validatePower(power);
    _power = power;
  }

  // -------------getter & setter

  void _validateName(final String name) {
    if (name.length < 3) {
      throw Exception('_name은 null일 수 없고 3글자 이상이어야 한다');
    }
  }

  void _validatePower(final double power) {
    if (power < 0.5 || power > 100.0) {
      throw Exception('_power는 0.5 이상 100.0 이하이어야 한다');
    }
  }
}
