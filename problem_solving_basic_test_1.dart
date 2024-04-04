void minMaxSum(List<int> arr) {
  int min = arr[0];
  int max = 0;
  int total = 0;

  for (int i = 0; i < arr.length; i++) {
    int item = arr[i];
    total += item;

    if (item < min) min = item;
    if (item > max) max = item;
  }

  print('${total - max} ${total - min}');
}

void main() {
  minMaxSum([9, 3, 5, 7, 1]);
  minMaxSum([5, 2, 3, 4, 1]);
}
