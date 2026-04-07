// class : blueprint : properties and behaviors

class Person {
  // Properties : variables
  String name;
  int age;
  bool status;

  // Constructor : 1. obejct creation 2. properties initialize
  // no return type
  Person({required this.name, required this.age, required this.status});

  @override
  String toString() {
    return "$name $age $status";
  }
}

void main() {
  Person p = Person(name: "kiran", age: 34, status: true);
  print(p);
}
