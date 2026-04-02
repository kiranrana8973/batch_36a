void main() {
  print(areaOfCircle(radius: 4));
  print(areaOfCircle(radius: 6, pi: 67));
  print(areaOfCircle(pi: 67, radius: 45));
}

// optioanl parameter : []
// named parameter : {} -> sabai optional or nullable huncha
double areaOfCircle({required double radius, double pi = 3.14}) {
  return pi * radius * radius;
}
