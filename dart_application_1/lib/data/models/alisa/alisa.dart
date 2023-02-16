class Money {
  int amount;

  Money({required this.amount});
}

class MoneyBox {
  int capacity;
  final List<Money> _moneys = [
    Money(amount: 10),
    Money(amount: 5),
    Money(amount: 3),
    Money(amount: 4),
  ];

  MoneyBox({required this.capacity});

  add(Money money) {
    return _moneys.add(money);
  }

  bool isEmpty() {
    if (_moneys.isEmpty) {
      return true;
    } else {
      return false;
    }
  }

  bool isFull() {
    if (_moneys.length == capacity) {
      return true;
    } else {
      return false;
    }
  }

  void getMoneyCount() {
    print("Pullar soni : ${_moneys.length} ta");
  }

  void getAmount() {
    num sum = 0;
    for (int i = 0; i < _moneys.length; i++) {
      sum = _moneys[i].amount + sum;
    }
    print("$sum 000 so'm pul bor");
  }
}

void main(List<String> args) {
  MoneyBox moneyBox = MoneyBox(capacity: 5);
  moneyBox.add(Money(amount: 8));
  print("IsEmpty : ${moneyBox.isEmpty()}");
  print("IsFull : ${moneyBox.isFull()}");
  moneyBox.getMoneyCount();
  moneyBox.add(Money(amount: 8));
  moneyBox.isFull();
  moneyBox.getAmount();
}

























// Hasanniki 
// class Money {
//   Money({required this.son});
//   num son;
// }

// class MoneyBox {
//   MoneyBox({required this.sigimi});
//   int sigimi;

//   ///shot sigimi 100 gacha
//   num shot = 0;

//   List<num> moneys = [];

//   void addMoney({required Money money}) {
//     if (money.son > 0) {
//       shot + money.son;
//       moneys.add(money.son);
//     }
//   }

//   bool isEmpty() {
//     bool isEmpty = false;
//     if (moneys.isEmpty) {
//       isEmpty = true;
//     } else {
//       isEmpty = false;
//     }
//     return isEmpty;
//   }

//   bool isFull() {
//     bool isFull = false;
//     if (moneys.length == sigimi) {
//       isFull = true;
//     } else {
//       isFull = false;
//     }
//     return isFull;
//   }

//   num getMoneyCount() => moneys.length;

//   num getAmount() => shot;
// }


// void main(List<String> args) {
//   MoneyBox moneyBox = MoneyBox(sigimi: 10);
//   print("IsEmpty: ${moneyBox.isEmpty()}");  
//   print("IsFull: ${moneyBox.isFull()}");
//   moneyBox.addMoney(money: Money(son: 10));
//   print("${moneyBox.getAmount()} 000 so'm pul bor");
//   print("Pullar soni: ${moneyBox.getMoneyCount()} ta");
//   print("IsEmpty: ${moneyBox.isEmpty()}");  
//   print("IsFull: ${moneyBox.isFull()}");  
// }