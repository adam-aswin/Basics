import 'dart:convert';

import 'package:flutter/material.dart';

class Outputpage extends StatefulWidget {
  const Outputpage({super.key});

  @override
  State<Outputpage> createState() => _OutputpageState();
}

class _OutputpageState extends State<Outputpage> {
  @override
  Widget build(BuildContext context) {
    final Map msg=jsonDecode(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(msg["first"]),
            Text(msg["last"]),
            Text(msg["date"]),
            Text(msg["email"]),
            Text(msg["no"]),
            Text(msg["gender"]),
            Text(msg["add"]),
            Text(msg["city"]),
            Text(msg["pin"]),
            Text(msg["state"]),
            Text(msg["country"]),
            Text(msg["hob"]),
            Text(msg["qual"]),
            Text(msg["course"]),
          ],
        ),
      ),
    );
  }
}