import 'dart:io';

class Bank {
  double _balance = 0.0;

  double get balance => _balance;

  void deposit(double amount) {
    this._balance += amount;
  }

  void withraw(double amount) {
    this._balance -= amount;
  }
}

void main() {
  File file = File("Balance.txt");
  // file.writeAsStringSync("0");
  Bank account = Bank();
  while (true) {
    print("====================");
    print("1.Deposit");
    print("2.Withdraw");
    print("3.Balance");
    print("4.Exit");
    print("====================");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    print("====================");
    if (choice == 1) {
      print("Deposit amount:");
      double? a = double.parse(stdin.readLineSync()!);
      account.deposit(a);

      String content = file.readAsStringSync();
      double y = double.parse(content);
      y += a;
      file.writeAsStringSync("$y");

      print("$a rs is deposited");
    } else if (choice == 2) {
      print("Withdraw amount:");
      double? b = double.parse(stdin.readLineSync()!);
      account.withraw(b);
      String content = file.readAsStringSync();
      double x = double.parse(content);
      x -= b;
      file.writeAsStringSync("$x");
      print("$b rs is withdrawed");
    } else if (choice == 3) {
      String content = file.readAsStringSync();
      print(content);
    } else if (choice == 4) {
      print("Exiting....");
      break;
    } else {
      print("Ivalid option");
    }
  }
}
