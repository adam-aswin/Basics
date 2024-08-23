import 'package:details/pages/inputpage.dart';
import 'package:details/pages/outputpage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Inputpage(),
    routes: {
      "/input":(context)=>Inputpage(),
      "/output":(context)=>Outputpage(),
    },
  ));
}