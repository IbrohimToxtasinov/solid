//D - Dependency Inversion

abstract class Animal {
  const Animal();

  void eat();
}

class Bear implements Animal {
  @override
  void eat() {
    print('Bear ovqatlanyapdi');
  }
}

class Horse implements Animal {
  @override
  void eat() {
    print('Horse ovqatlanyapdi');
  }
}

class Lion implements Animal {
  @override
  void eat() {
    print('Lion ovqatlanyapdi');
  }
}

class Speed {
  returnSpeed(Animal animal) => animal.eat();
}
