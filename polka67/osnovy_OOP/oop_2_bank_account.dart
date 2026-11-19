class BankAccount {
  String owner;
  double balance;

  BankAccount({
    required this.owner,
    this.balance = 0.0,
  });

  void deposit(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма пополнения должна быть больше 0.');
      return;
    }
    balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Ошибка: сумма снятия должна быть больше 0.');
      return;
    }
    if (amount > balance) {
      print('Ошибка: недостаточно средств на счете $owner.');
      return;
    }
    balance -= amount;
  }

  double getBalance() {
    return balance;
  }

  void printStatement() {
    print('Владелец: $owner, баланс: $balance');
  }
}

void main() {
  // Каждый экземпляр класса (объект) имеет свои собственные поля в памяти.
  // Изменение balance у acc1 затрагивает только его состояние и не меняет balance у acc2.
  BankAccount acc1 = BankAccount(owner: 'Каниет');
  BankAccount acc2 = BankAccount(owner: 'Айбек', balance: 500.0);

  // Операции с первым счетом
  acc1.deposit(1500.0);
  acc1.withdraw(400.0);
  acc1.withdraw(5000.0); // Проверка ошибки при нехватке средств

  // Операции со вторым счетом
  acc2.withdraw(200.0);
  acc2.deposit(350.0);

  print('\n--- Выписки по счетам ---');
  acc1.printStatement();
  acc2.printStatement();
}