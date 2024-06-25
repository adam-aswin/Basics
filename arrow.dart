import 'dart:io';

int add(a,b)=>a+b;

void main(){
  print("Enter first number: ");
  int x= int.parse(stdin.readLineSync()!);
  print("Enter first number: ");
  int y= int.parse(stdin.readLineSync()!);
  int z=add(x, y);
  print("Result :$z");
}