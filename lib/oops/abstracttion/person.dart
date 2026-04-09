// Abstract Class : A class that cannot be instantiated directly
// It can have abstract methods (no body) that child classes MUST override
// Use 'abstract' keyword before class

abstract class Faculty {
  final String name;
  final int age;
  final String address;

  Faculty({required this.name, required this.age, required this.address});

  String displayDetails() => "$name $age $address";

  // Abstract method : no body, child classes MUST implement it
  double calculateYearlySalary();
}

class FullTimeFaculty extends Faculty {
  final double monthlySalary;

  FullTimeFaculty({
    required super.name,
    required super.age,
    required super.address,
    required this.monthlySalary,
  });

  // Override : FullTime calculates yearly salary from monthly
  @override
  double calculateYearlySalary() {
    return monthlySalary * 12;
  }
}

class PartTimeFaculty extends Faculty {
  final double hourlySalary;
  final int hoursWorkedPerWeek;

  PartTimeFaculty({
    required super.name,
    required super.age,
    required super.address,
    required this.hourlySalary,
    required this.hoursWorkedPerWeek,
  });

  double calculateWeeklySalary() {
    return hourlySalary * hoursWorkedPerWeek;
  }

  // Override : PartTime calculates yearly salary from hourly
  @override
  double calculateYearlySalary() {
    return calculateWeeklySalary() * 52;
  }
}

void main() {
  // Parent type reference holding child objects
  Faculty ft = FullTimeFaculty(
    name: "Amit",
    age: 34,
    address: "Delhi",
    monthlySalary: 120000,
  );

  Faculty pt = PartTimeFaculty(
    name: "Rahul",
    age: 28,
    address: "Mumbai",
    hourlySalary: 500,
    hoursWorkedPerWeek: 20,
  );

  // Same method name, different output — this is Polymorphism
  print(ft.displayDetails());
  print("Yearly Salary: ${ft.calculateYearlySalary()}");

  print("---");

  print(pt.displayDetails());
  print("Yearly Salary: ${pt.calculateYearlySalary()}");
}
