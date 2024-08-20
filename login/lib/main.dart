import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/login.dart';
import 'package:login/signup.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    routes: {
      "/home":(context)=>HomePage(),
      "/login":(context)=>LoginPage(),
      "/sign":(context)=>SignupPage(),
    },
  ));
}
