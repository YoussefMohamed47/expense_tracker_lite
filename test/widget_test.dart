import 'package:expense_tracker_lite/utils/helpers/functions.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Expense Validation', () {
    test('Valid positive number returns true', () {
      expect(isExpenseValid("100"), true);
    });

    test('Zero or negative returns false', () {
      expect(isExpenseValid("0"), false);
      expect(isExpenseValid("-5"), false);
    });

    test('Invalid string returns false', () {
      expect(isExpenseValid("abc"), false);
    });
  });

  group('Currency Conversion', () {
    test('Converts correctly with rate', () {
      expect(calculateConvertedAmount("100", 48), 4800);
    });

    test('Invalid string returns 0', () {
      expect(calculateConvertedAmount("abc", 1.5), 0);
    });
  });
}
