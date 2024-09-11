import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateprovider/firstPage.dart';
import 'package:stateprovider/provider/numberListProvider.dart';
import 'package:stateprovider/work/mainPage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => NumberListProvider(),
    child: MaterialApp(
      home: Mainpage(),
    ),
  ));
}
