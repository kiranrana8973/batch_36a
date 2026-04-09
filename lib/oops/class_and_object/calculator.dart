class Calculator {
  int num1;
  int num2;

  Calculator({required this.num1, required this.num2});

  int add() => num1 + num2;
  int sub() => num1 - num2;
}

void main() {
  Calculator c = Calculator(num1: 23, num2: 34);
  print("Addition : ${c.add()}");
  print("Subtraction : ${c.sub()}");
}
