// Interface : In Dart, every class can act as an interface using 'implements'
// Difference from abstract class:
// extends  → child inherits concrete methods for FREE
// implements → child MUST implement ALL methods (even concrete ones)
// Interface = 100% abstraction

// This acts as an Interface
abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
  void printShape();
  bool isLargerThan(Shape other);
}

// implements → MUST provide body for ALL methods
class Circle implements Shape {
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

  @override
  void printShape() {
    print("Circle - Area: ${calculateArea()}");
    print("Circle - Perimeter: ${calculatePerimeter()}");
  }

  @override
  bool isLargerThan(Shape other) {
    return calculateArea() > other.calculateArea();
  }
}

class Rectangle implements Shape {
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

  @override
  void printShape() {
    print("Rectangle - Area: ${calculateArea()}");
    print("Rectangle - Perimeter: ${calculatePerimeter()}");
  }

  @override
  bool isLargerThan(Shape other) {
    return calculateArea() > other.calculateArea();
  }
}

void main() {
  Shape c = Circle(radius: 7);
  c.printShape();

  print("---");

  Shape r = Rectangle(length: 10, width: 5);
  r.printShape();

  print("---");

  print("Is Circle larger than Rectangle? ${c.isLargerThan(r)}");
}

