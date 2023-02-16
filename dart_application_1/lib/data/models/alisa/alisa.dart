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
