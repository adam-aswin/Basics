import 'dart:convert';

import 'package:flutter/material.dart';

class Thirdpage extends StatefulWidget {
  const Thirdpage({super.key});

  @override
  State<Thirdpage> createState() => _ThirdpageState();
}

class _ThirdpageState extends State<Thirdpage> {
  @override
  Widget build(BuildContext context) {
    final Map msg =
        jsonDecode(ModalRoute.of(context)?.settings.arguments as String);
    return Scaffold(
      appBar: AppBar(
        title: Text("Third page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(msg["email"]),
          Text(msg["pwd"]),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Back"),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.pushReplacementNamed(context, '/first');
              // Navigator.pushNamedAndRemoveUntil(
              //     context, '/first', (route) => false);
              Navigator.popUntil(context, ModalRoute.withName('/first'));
            },
            child: Text("first page"),
          )
        ],
      ),
    );
  }
}
