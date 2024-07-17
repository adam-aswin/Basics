import 'dart:io';

void main() {
  print("Enter a password: ");
  String a = stdin.readLineSync()!;
  RegExp reg = RegExp(r'[A-Z][a-z].{8,}$');
  reg.hasMatch(a) ? print("Valid Password") : print("Invalid Password");
}
