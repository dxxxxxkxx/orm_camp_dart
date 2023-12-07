void validateName(final String name) {
  if (name.length < 3) {
    throw Exception('_name은 null일 수 없고 3글자 이상이어야 한다');
  }
}

void validateMp(final int mp) {
  if (mp < 0) {
    throw Exception('_mp는 0 이상이어야 한다');
  }
}

void validatePower(final double power) {
  if (power < 0.5 || power > 100.0) {
    throw Exception('_power는 0.5 이상 100.0 이하이어야 한다');
  }
}

int setHp(final int hp) {
  return hp >= 0 ? hp : 0;
}
