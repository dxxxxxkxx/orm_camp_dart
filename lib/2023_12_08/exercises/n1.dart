class StrongBox<T> {
  T? _instance;

  StrongBox({T? instance}) : _instance = instance;

  T? get() => _instance;

  void set({required final T instance}) {
    _instance = instance;
  }
}
