// void main() {
//   String name;
//   name = "kiran";
//   int age;
//   age = 34;
//   bool? status;
//   status = null;
// }

void main() {
  int first;
  int? second;
  // ? = null
  // ! = not null
  first = 5;

  int third = first + (second ?? 0);

  print(third);
}

int add(int first, int? second) {
  // if (second != null) {
  //   return first + second;
  // }
  return first + (second ?? 0);
}

// MEAN - 
// M - MongoDB - NoSQL - not only SQL

// {
//   "fname" : "kiran",
//   "age": 34 , 
// }
// {
//   "fname":"asd",
//   "age":45,
//   "status" : true
// }
