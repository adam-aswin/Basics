import 'package:bloodbank/pages/Addpage.dart';
import 'package:bloodbank/pages/Homepage.dart';
import 'package:bloodbank/pages/homescreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Homepage(),
    routes: {
      "/home": (context) => Homescreen(),
      "/add": (context) => Addpage(),
    },
  ));
}
