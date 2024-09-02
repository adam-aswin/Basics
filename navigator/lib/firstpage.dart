import 'dart:convert';

import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    Map data = {};
    TextEditingController _c1 = TextEditingController();
    TextEditingController _c2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("First page"),
          Expanded(
            child: TextField(
              controller: _c1,
            ),
          ),
          Expanded(
            child: TextField(
              controller: _c2,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                data["email"]=_c1.text;
                data["pwd"]=_c2.text;
              });
              // Navigator.pushNamed(context, "/second");
              Navigator.pushReplacementNamed(context, '/third',
                  arguments: jsonEncode(data));
            },
            child: Text("Second page"),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.maybePop(context);
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                print("you can't go back");
              }
            },
            child: Text("Back"),
          )
        ],
      ),
    );
  }
}
