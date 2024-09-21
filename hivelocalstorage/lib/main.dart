import 'package:flutter/material.dart';
// import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hivelocalstorage/HiveStorage.dart';
import 'package:hivelocalstorage/work/addpage.dart';
import 'package:hivelocalstorage/work/student_home.dart';

void main() async {
  await Hive.initFlutter();

  var data = await Hive.openBox('mydata');

  runApp(
    MaterialApp(
      routes: {
        "/main": (context) => StudentHome(),
        "/add": (context) => Addpage(),
      },
      home: StudentHome(),
    ),
  );
}
