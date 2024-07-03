class Bank{
  double _balance=0.0;

  double get balance=>_balance;

  void deposit(double amount){
    this._balance+=amount;


  }

  void withdraw(double amount){
    this._balance-=amount;
  }
}

void main(){
  Bank account=Bank();
  account.deposit(1000);
  print("Balance after deposit: ${account.balance}");
  account.withdraw(200);
  print("Balance after withdraw: ${account.balance}");


}