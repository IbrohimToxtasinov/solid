// L — Liskov Substitution

class Rectangle {
  double width;
  double height;
  Rectangle(this.width, this.height);
}

class Square extends Rectangle {
  Square(double length) : super(length, length);
}
