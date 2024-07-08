import 'dart:io';

void main() {
  File file = File("list.txt");
  Map<String, dynamic> mp = {};
  while (true) {
    print("====================");
    print("1.Add employee");
    print("2.Salary");
    print("3.Designation");
    print("4.Display");
    print("5.Exit");
    print("====================");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    print("====================");
    if (choice == 1) {
      print("Enter Employee name:");
      String? x = stdin.readLineSync();
      mp["name"] = x;
    } else if (choice == 2) {
      print("Enter Employee salary:");
      double? y = double.parse(stdin.readLineSync()!);
      mp["Salary"] = y;
    } else if (choice == 3) {
      print("Enter Employee designation:");
      String? z = stdin.readLineSync();
      mp["designation"] = z;
    } else if (choice == 4) {
      String c = file.readAsStringSync();
      print(c);
    } else if (choice == 5) {
      print("Exiting...");
      break;
    } else {
      print("Ivalid option");
    }
  }
}
