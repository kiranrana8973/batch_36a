// snake_case : project name, file_name
// PascalCase : Class
// camelCase : functions and variables

// void main() {
//   // 1. data represenation
//   int first, second, result;

//   //2. input
//   first = 45;
//   second = 7;

//   //3.  algorithm
//   result = add(first, second);
//   //4. output
//   // string interpolation
//   print("The sum of $first and $second : $result");
// }

void main() {
  print(add(first: 45, second: 45));
  print(add(first: 45, second: 45, third: 45));
  print(add(first: 45, second: 45, fourth: 45));
}

// method overloading : same name but different signature : HUDAINA
// optional parameter : [] : optional :
int add({
  required int first,
  required int second,
  int third = 0,
  int fourth = 0,
}) {
  return first + second + third + fourth;
}
