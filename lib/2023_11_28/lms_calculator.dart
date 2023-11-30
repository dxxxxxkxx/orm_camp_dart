class Calculator {
  // 더하기
  num add(num a, num b) => a + b;

  // 빼기
  num subtract(num a, num b) => a - b;

  // 곱하기
  num multiply(num a, num b) => a * b;

  // 나누기
  dynamic divide(num a, num b) {
    if (b != 0) {
      return a / b;
    } else {
      return 'Can\'t divide by 0';
    }
  }
}

void main() {
  Calculator calculator = Calculator();

  print(calculator.add(3, 2.4));
  print(calculator.subtract(3, 2.4));
  print(calculator.multiply(3, 2.4));
  print(calculator.divide(3, 2.4));
  print(calculator.divide(3, 0));
}
