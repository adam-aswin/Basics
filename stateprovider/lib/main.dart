import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/work/AddTask.dart';
import 'package:stateprovider/work/editpage.dart';
// import 'package:stateprovider/firstPage.dart';
// import 'package:stateprovider/provider/numberListProvider.dart';
import 'package:stateprovider/work/mainPage.dart';
import 'package:stateprovider/work/provders.dart/taskprovider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Taskprovider(),
    child: MaterialApp(
      home: Mainpage(),
      routes: {
        "/main": (context) => Mainpage(),
        "/add": (context) => AddTask(),
        "/edit": (context) => Editpage(),
      },
    ),
  ));
}
