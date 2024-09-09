import 'package:flutter/material.dart';
import 'package:hero/pages/hero1.dart';
import 'package:hero/pages/hero2.dart';

void main() {
  runApp(MaterialApp(
    home: Hero1(),
    routes: {
      "/hero1": (context) => Hero1(),
      "/hero2": (context) => Hero2(),
    },
  ));
}
