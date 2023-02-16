//O — Open-Closed

abstract class Shape{
   perimetr();
}

class Circle extends Shape{
  num radius;

  Circle({required this.radius});

  @override
  perimetr() {
    return 3.14*radius;
  }
}

class Square extends Shape{

  num side;

  Square({required this.side});
  @override
  perimetr() {
    return 4*side;
  }

}