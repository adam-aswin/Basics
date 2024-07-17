import 'dart:io';

void main() {
  print("Enter a date: ");
  String a = stdin.readLineSync()!;
  RegExp reg = RegExp(r'([0-2]\d||3[0-1])-(0\d||1[0-2])-(\d{4})$');
  reg.hasMatch(a) ? print("valid") : print("invalid");
}
