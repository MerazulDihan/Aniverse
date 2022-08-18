import 'package:flutter_test/flutter_test.dart';

import 'calculator.dart';

void main() {
  group('Calculator', () {
    test('should add two numbers', () {
      final calculator = Calculator();

      int sum = calculator.add(2, 3);

      expect(sum, 5);
    });
  });
}
