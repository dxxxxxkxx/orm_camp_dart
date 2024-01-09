Future<String> timeoutFuture() async {
  await Future.delayed(const Duration(seconds: 6));

  return 'OK';
}

void main() async {
  print(await timeoutFuture()
      .timeout(const Duration(seconds: 5), onTimeout: () => 'Timeout'));
}
