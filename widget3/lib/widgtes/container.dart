import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            width: 150,
            height: 150,
            child: Text("Instagram",
                style: TextStyle(fontFamily: "sevilla", fontSize: 18)),
            alignment: Alignment.center,
            margin: EdgeInsets.all(50),
            decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(5, 5))
                ],
                gradient: LinearGradient(
                    colors: [Colors.pink, Colors.orange],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
        ),
      ),
    );
  }
}
