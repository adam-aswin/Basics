import 'dart:io';

void main() {
  print("Enter an email id: ");
  String a = stdin.readLineSync()!;
  RegExp reg = RegExp(r'[a-z]+@[a-z]+\.[a-z]{2,}$');
  reg.hasMatch(a) ? print("Valid Email") : print("Invalid Email");
}
