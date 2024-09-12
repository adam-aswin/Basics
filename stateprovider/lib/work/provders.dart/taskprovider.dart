import 'package:flutter/material.dart';

class Taskprovider extends ChangeNotifier {
  List<String> task = [];

  void addTask(data) {
    task.add(data);
    notifyListeners();
    print(task);
  }
}
