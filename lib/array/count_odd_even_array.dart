void main() {
  List<int> arr = [1, 23, 45, 56, 56, 67, 78, 78, 78, 3];
  var oddEven = countOddEven(arr);
  print(
    "oddcount : ${oddEven.oddCount} , evenCountasdasd : ${oddEven.evenCount}",
  );
}

// odd : 3
// even : 4
// REcord : return multiple values without creating a class
({int oddCount, int evenCount}) countOddEven(List<int> arr) {
  int oddCount = 0;
  int evenCount = 0;
  int sumEven = 0;
  int sumOdd = 0;

  for (int i in arr) {
    if (i % 2 == 0) {
      evenCount += 1;
      sumEven += i;
    } else {
      oddCount += 1;
      sumOdd += i;
    }
  }

  return (oddCount: oddCount, evenCount: evenCount);
}
