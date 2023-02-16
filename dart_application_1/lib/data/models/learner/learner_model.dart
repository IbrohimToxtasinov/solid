class Learner {
  final String name;
  final int score;
  final int age;

  Learner({required this.name, required this.score, required this.age});
}

enum Course {
  JAVA,
  PYTHON,
  CPLUS,
  WEB,
  FLUTTER,
  ANDROID,
  IOS,
  FRONTEND,
  BACKEND,
  SMM,
}


  // void add(Money money){
  //   _money.add(money);
  // }

  // bool isEmpty(){
  //   return _money.isEmpty;
  // }

  // bool isFull(){
  //   return _money.fold(0,(value, element) => value+element.amount)==capacity;
  // }

  // int getMoneyCount(){
  //   return _money.length;
  // }

  // int getAmount(){
  //   return _money.fold(0,(value, element) => value+element.amount);
  // }