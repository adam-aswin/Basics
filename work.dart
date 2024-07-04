import 'dart:io';
class Bank{
    double _balance=0.0;

    double get balance=>_balance;

    void deposit(double amount){
        this._balance+=amount;
    
    }
    void withraw(double amount){
        this._balance-=amount;
    }
}

void main(){
    Bank account=Bank();
    while(true){
        print("====================");
        print("1.Deposit");
        print("2.Withdraw");
        print("3.Balance");
        print("4.Exit");
        print("====================");
        print("Enter your choice: ");
        int choice=int.parse(stdin.readLineSync()!);
        print("====================");
        if(choice==1){
            print("Deposit amount:");
            double? a=double.parse(stdin.readLineSync()!);
            account.deposit(a);
            print("$a rs is deposited");}
        else if(choice==2){
            print("Withdraw amount:");
            double? b=double.parse(stdin.readLineSync()!);
            account.withraw(b);
            print("$b rs is withdrawed");
        }else if(choice==3){
            print("Balance amount: ${account.balance}");
        }else if(choice==4){
            print("Exiting....");
            break;
        }else{
            print("Ivalid option");
        }
        
    }
}