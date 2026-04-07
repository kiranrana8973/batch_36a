// encapsulation : data hiding
// using private keyword
class Person {
  // Properties : private variables
  String _name;
  int _age;
  bool _status;

  // getter
  String get getName => _name;
  int get getAge => _age;
  bool get getStatus => _status;

  // setter
  set setName(String value) => _name = value;
  set setAge(int value) => _age = value;
  set setStatus(bool value) => _status = value;

  // Constructor : 1. obejct creation 2. properties initialize
  // no return type

  // Person(this._name, this._age, this._status);
  // OR
  Person({required String name, required int age, required bool status})
    : _name = name,
      _age = age,
      _status = status;

  // Constructor overloading
  // named constructor
  Person.withNameAndAge({required String name, required int age})
    : _name = name,
      _age = age,
      _status = false;

  @override
  String toString() {
    return "$_name $_age $_status";
  }
}

void main() {
  Person p = Person(name: "kiran", age: 34, status: false);
  print(p.getName);
  p.setName = "test";
  p.setAge = 2;
  print(p);

  Person p2 = Person.withNameAndAge(name: "asd", age: 45);
  print(p2);
}
