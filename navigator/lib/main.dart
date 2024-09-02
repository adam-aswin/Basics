import 'package:flutter/material.dart';
import 'package:navigator/firstpage.dart';
import 'package:navigator/secondpage.dart';
import 'package:navigator/thirdpage.dart';

void main() {
  runApp(MaterialApp(
    home: Mainpage(),
    routes: {
      "/first": (context) => Firstpage(),
      "/main": (context) => Mainpage(),
      "/second": (context) => Secondpage(),
      "/third": (context) => Thirdpage(),
    },
  ));
}

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Main page"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/first");
            },
            child: Text("First page"),
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
