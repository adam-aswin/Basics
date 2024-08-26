import 'package:details/pages/homepage.dart';
import 'package:details/pages/inputpage.dart';
import 'package:details/pages/outputpage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Homepage(),
    routes: {
      "/home":(context)=>Homepage(),
      "/input":(context)=>Inputpage(),
      "/output":(context)=>Outputpage(),
    },
  ));
}