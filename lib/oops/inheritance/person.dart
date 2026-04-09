class Faculty {
  final String name;
  final int age;
  final String address;

  Faculty({required this.name, required this.age, required this.address});

  String displayDetails() => "$name $age $address";
}

class FullTimeFaculty extends Faculty {
  final double monthlySalary;

  FullTimeFaculty({
    required super.name,
    required super.age,
    required super.address,
    required this.monthlySalary,
  });

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

  double calculateYearlySalary() {
    return calculateWeeklySalary() * 52;
  }
}

void main() {
  FullTimeFaculty ft = FullTimeFaculty(
    name: "Kiran",
    age: 34,
    address: "address",
    monthlySalary: 120000,
  );

  print(ft.calculateYearlySalary());

  PartTimeFaculty pt = PartTimeFaculty(
    name: "Salman",
    age: 60,
    address: "Mumbai",
    hourlySalary: 500,
    hoursWorkedPerWeek: 20,
  );

  print(pt.displayDetails());
  print("Weekly Salary: ${pt.calculateWeeklySalary()}");
  print("Yearly Salary: ${pt.calculateYearlySalary()}");
}

