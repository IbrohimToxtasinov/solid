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

class Hours implements Animal {
  @override
  void eat() {
    print('Hours ovqatlanyapdi');
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