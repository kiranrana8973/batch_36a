// Abstract class : no constructor needed (no properties)
abstract class Shape {
  // Abstract methods : child MUST implement
  double calculateArea();
  double calculatePerimeter();

  // Concrete methods : implemented in parent, child gets it for FREE
  void printShape() {
    print("Area: ${calculateArea()}");
    print("Perimeter: ${calculatePerimeter()}");
  }

  bool isLargerThan(Shape other) {
    return calculateArea() > other.calculateArea();
  }
}

class Circle extends Shape {
  final double radius;

  Circle({required this.radius});

  @override
  double calculateArea() {
    return 3.14 * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Rectangle extends Shape {
  final double length;
  final double width;

  Rectangle({required this.length, required this.width});

  @override
  double calculateArea() {
    return length * width;
  }

  @override
  double calculatePerimeter() {
    return 2 * (length + width);
  }
}

void main() {
  Shape c = Circle(radius: 7);
  c.printShape(); // concrete method from parent

  print("---");

  Shape r = Rectangle(length: 10, width: 5);
  r.printShape(); // concrete method from parent

  print("---");

  // Comparing areas using concrete method
  print("Is Circle larger than Rectangle? ${c.isLargerThan(r)}");
}


