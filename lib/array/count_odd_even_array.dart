void main() {
  List<int> arr = [1, 23, 45, 56, 56, 67, 78, 78, 78, 3];
  countOddEven(arr);
}

// odd : 3
// even : 4
void countOddEven(List<int> arr) {
  int oddCount = 0;
  int evenCount = 0;

  for (int i in arr) {
    if (i % 2 == 0) {
      evenCount += 1;
    } else {
      oddCount += 1;
    }
  }

  print("Odd : $oddCount , even : $evenCount");
}
