import 'package:cantacts/pages/addcontacts.dart';
import 'package:cantacts/pages/contacts.dart';
import 'package:cantacts/pages/displaycontacts.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/contact",
    routes: {
      "/contact":(context)=>Contacts(),
      "/add":(context)=>Addcontacts(),
      "/display":(context)=>Displaycontacts(),
    },
  ));
}
