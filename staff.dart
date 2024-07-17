import 'dart:convert';
import 'dart:io';

void main() {
  File file = File("Staff_data.txt");

  List ls = [];
  List Emps = [];
  Map<String, dynamic> mp = {};
  Map<String, dynamic> mp1 = {};
  while (true) {
    print("====================");
    print("1.Add details");
    print("2.Display staff");
    print("3.Delete staff");
    print("4.Exit");
    print("====================");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync()!);
    print("====================");
    if (choice == 1) {
      print("Enter Staff Employee id:");
      double? n = double.parse(stdin.readLineSync()!);
      mp["Empid"] = n;

      print("Enter Staff name:");
      String? x = stdin.readLineSync();
      mp["Name"] = x;

      print("Enter Staff phone number:");
      mp["Phone"] = double.parse(stdin.readLineSync()!);

      print("Enter Staff salary:");
      mp["Salary"] = double.parse(stdin.readLineSync()!);

      print("Enter Staff designation:");
      mp["Designation"] = stdin.readLineSync();

      File data = File("./Staffs/${n}.txt");
      data.writeAsStringSync("$mp");

      mp1["name"] = x;
      mp1["file"] = "${n}.txt";
      try {
        String emp = file.readAsStringSync();
        Emps = jsonDecode(emp);
        Emps.add(mp1);
        String jsonString = jsonEncode(Emps);
        file.writeAsStringSync(jsonString);
      } catch (error) {
        Emps.add(mp1);
        String jsonString = jsonEncode(Emps);
        file.writeAsStringSync(jsonString);
      }
    } else if (choice == 2) {
      List<dynamic> Employee = jsonDecode(file.readAsStringSync());
      print("Name\n");
      for (Map i in Employee) {
        print("${i["name"]}\n");
      }
    } else if (choice == 3) {
      print("Enter Staff Employee id:");
      double? a = double.parse(stdin.readLineSync()!);
      try {
        // print("delete");
        String emp = file.readAsStringSync();
        Emps = jsonDecode(emp);
        for (Map i in Emps) {
          if ('${a}.txt' == i['file']) {
            File data = File("./Staffs/${i['file']}");
            data.deleteSync();
            print("file ${i['file']} deleted");
            break;
          } else {
            print("Not exist");
          }
        }
      } catch (error) {
        print(error);
      }
    } else if (choice == 4) {
      print("Exiting....");
      break;
    } else {
      print("Ivalid option");
    }
  }
}
