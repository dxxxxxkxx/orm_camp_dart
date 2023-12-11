import 'recoverable_type.dart';

abstract interface class Recoverable {
  void recover({required final RecoverableType recoverableType});
}
