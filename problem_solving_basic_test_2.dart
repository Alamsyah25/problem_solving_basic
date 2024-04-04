void plusMinus(List<int> arr) {
  int positive = 0, negative = 0, zero = 0;
  arr.forEach(
    (item) {
      if (item > 0) {
        positive++;
      } else if (item < 0) {
        negative++;
      } else {
        zero++;
      }
    },
  );

  double positiveRatio = positive / arr.length;
  double negativeRatio = negative / arr.length;
  double zeroRatio = zero / arr.length;

  print(
    '${positiveRatio.toStringAsFixed(6)}\n${negativeRatio.toStringAsFixed(6)}\n${zeroRatio.toStringAsFixed(6)}',
  );
}

void main() {
  plusMinus(
    [1, 1, 0, -1, -1],
  );

  print('');

  plusMinus(
    [-4, 3, -9, 0, 4, 1],
  );
}
