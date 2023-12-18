enum KeyType {
  padlock(maxCount: 1024),
  button(maxCount: 10000),
  dial(maxCount: 30000),
  finger(maxCount: 1000000);

  const KeyType({required this.maxCount});

  final int maxCount;
}

class StrongBox<T extends KeyType> {
  T _instance;
  int _currentCount;

  StrongBox({required final T instance})
      : _instance = instance,
        _currentCount = 0;

  T? get() {
    _currentCount++;

    switch (_instance) {
      case KeyType.padlock:
        if (_currentCount < KeyType.padlock.maxCount) {
          return null;
        }
        break;
      case KeyType.button:
        if (_currentCount < KeyType.button.maxCount) {
          return null;
        }
        break;
      case KeyType.dial:
        if (_currentCount < KeyType.dial.maxCount) {
          return null;
        }
        break;
      case KeyType.finger:
        if (_currentCount < KeyType.finger.maxCount) {
          return null;
        }
        break;
    }

    return _instance;
  }

  void set({required final T instance, required final int currentCount}) {
    _instance = instance;
    _currentCount = currentCount;
  }
}
